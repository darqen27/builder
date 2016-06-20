with import <nixpkgs> {};
with stdenv;

rec {
  mkBuilder = code: writeTextFile {
    name = "builder.sh";
    text = "source $stdenv/setup\n" + code;
  };

  mkServer = {
    name,
    forge,
    forgeMajor,
    mods,
    extraDirs ? [],
    configPatches ? [],
  }: mkDerivation rec {
    inherit name;

    src = ../base-server;

    inherit forge;
    modDirs = builtins.filter (m: m.side != "CLIENT") (builtins.attrValues mods);
    minecraft = fetchurl {
      url = "https://s3.amazonaws.com/Minecraft.Download/versions/${forgeMajor}/minecraft_server.${forgeMajor}.jar";
      sha256 = "1z7kf8wm27yq10rnlwlig7c2vc45x3sfbxslw4lxh9201kq70267";
    };

    baseMinecraft = mkBaseMinecraft {
      extraDirs = extraDirs;
      configPatches = map mkPatch configPatches;
    };

    buildInputs = [ rsync ];

    passthru = {
      inherit mods baseMinecraft;
    };

    builder = mkBuilder ''
      mkdir -p $out/mods

      rsync -a $src/ $out/
      chmod 0755 $out

      ln -s $forge $out/forge-universal.jar
      ln -s $minecraft $out/minecraft_server.1.7.10.jar

      rsync -a $baseMinecraft/ $out/

      for modDir in $modDirs; do
        rsync -a $modDir/mods/ $out/mods/
      done
    '';
  };

  mkBaseMinecraft = {
    # Directories to copy in verbatim. Well, derivations.
    extraDirs ? []

    # Config patches to apply.
   ,configPatches ? []
  }: mkDerivation {
    name = "base-minecraft";

    inherit extraDirs configPatches;

    buildInputs = [ rsync zip ];

    builder = mkBuilder ''
      mkdir $out

      for extraDir in $extraDirs; do
        rsync -aL $extraDir/ $out
      done

      chmod -R 0755 $out/config
      for configPatch in $configPatches; do
        (cd $out/config/; source $configPatch)
      done
      find "$out" -print0 | \
        xargs -0r touch --no-dereference --date=1970-01-01

      # This is for the serverpack.
      cd $out
      chmod u+w .
      tmp=$(mktemp)
      echo '{' > $tmp
      for dir in *; do
        TZ=UTC find $dir -print0 | sort -z | \
          xargs -0 zip -X --latest-time -q $dir.zip
        md5=$(md5sum $dir.zip | awk '{print $1}')
        printf '%s = "%s";\n' $dir $md5 >> $tmp
      done
      echo '}' >> $tmp
      mv $tmp default.nix
    '';
  };

  mkPatch = patch:
    if builtins.isString patch then builtins.toFile "patch.sh" patch
    else abort "Structured patches are not yet implemented";

  mkMod = self: mkDerivation ({
    builder = mkBuilder ''
      mkdir -p $out/mods
      ln -s "$src" $out/mods/"$modpath"
      md5=$(md5sum "$src" | awk '{print $1}')
      cat >> $out/default.nix <<EOF
        { md5 = "$md5";
          modpath = "$modpath"; }
      EOF
    '';

    side = "BOTH";
    required = true;
    modtype = "Regular";
    modpath = self.name + ".jar";
  } // self);

  fetchForge = cfg: fetchurl {
    url = "http://files.minecraftforge.net/maven/net/minecraftforge/forge/${cfg.major}-${cfg.minor}-${cfg.major}/forge-${cfg.major}-${cfg.minor}-${cfg.major}-universal.jar";
    sha1 = cfg.sha1;
  };


  ## Base pack generation ##
  mkBasePack = cfg: rec {

    getDir = dir: mkDerivation {
      name = builtins.replaceStrings ["/"] ["_"] dir;
      src = cfg.src;
      inherit dir;

      builder = mkBuilder ''
        mkdir -p $out/$(dirname $dir)
        ln -s $src/$dir $out/$(dirname $dir)
      '';
    };

    baseModsNix = mkDerivation {
      name = "base-mods";
      src = cfg.src;

      buildInputs = [ perl ];

      printDerivation = builtins.toFile "printDerivation.pl" ''
        use strict;

        sub p {
          my $base = shift;
          my $version = shift;
          $base =~ s/ /_/g; 
          $base =~ s/'//g;
          $version =~ s/[\[\]()]/_/g;
          $version =~ s/^[-_]//;
          print "  $base = {\n";
          print "    name = \"$base-$version\";\n";
          print "    path = \"/mods/$_\";\n";
          print "    version = \"$version\";\n";
          print "  };\n\n";
          next;
        }

        print "{\n";
        while (<>) {
          $_ =~ s/\s+$//;
          # Per-mod hacks go on top.
          # Don't think too hard about it.
          p("ASP GS Patcher", "unknown") if /^ASP +GS Patcher.jar$/;
          p($1, $+{version} . "-" . $+{type}) if /(.*BiblioWoods)\[(?<type>[^\]]+)\]\[v(?<version>[^\]]+)\].jar/;
          p($1, $+{version}) if /(.*BiblioCraft)\[v(?<version>[^\]]+)\]\[MC(?<mcversion>[^\]]+)\].jar/;
          p("ProjectRed" . $2, $1) if /ProjectRed-([0-9].*)-(.*).jar/;
          p($1, $2) if /(Steves.*?)([0-9A-Z][0-9\.].*).jar/;
          p($1, $2) if /^(Carpenters.Blocks).v([0-9.]+).-.MC.*.jar/;
          p($1, $2) if /^(Carpenter's.Blocks).v([0-9.]+_dev_r[0-9]+).-.MC.*.jar/;
          p($1, $2) if /^(ComputerCraft)([0-9.]+).jar/;
          p($1, $2) if /^\[1.7.10\]\[[0-9.]+\+?\](TFC-Additions)-([0-9.]+).jar/;
          p($1, $2) if /^(LycanitesMobs.*) ([0-9.]+) \[1.7.10\].jar/;
          # Some people like to put the minecraft version number first.
          p($1, $2) if /^(?:client-)?\[?1.7.10\]?-?([\w]+)-(.*).jar/;
          # This one works on the 98% of mods remaining.
          p($1, $2) if /(?:client-)?(.*?)[-_ ]((mc|MC|rv|r|v|\[)?[0-9].*).jar/;
          print "ERROR: Couldn't parse " . $_ . "\n";
        }
        print "}\n";
      '';

      builder = mkBuilder ''
        find $src/mods -mindepth 1 -maxdepth 1 -name \*.jar -printf "%f\n" \
          | sort -f \
          | perl $printDerivation \
          > $out
        grep ^ERROR: $out && exit 1 || true
      '';
    };
    
    mods = lib.mapAttrs splitMod (import baseModsNix);

    splitMod = name: mod: mkMod ((cfg.modConfig.${name} or {}) // {
      name = mod.name;
      src = cfg.src + mod.path;
      modpath = builtins.baseNameOf mod.path;
    });
  };

  ## Modifies Bibliocraft to add paintings, yay!
  bibliocraftWithPaintings = {
    bibliocraft,
    paintings,
  }: mkMod {
    name = bibliocraft.name + "-tampered";
    src = mkDerivation {
        name = "BiblioCraft-tampered-jar";

        src = bibliocraft;

        buildInputs = [ zip imagemagick ];
        inherit paintings;

        builder = mkBuilder ''
          cp "$(find $src -name \*.jar)" tmp.zip &
          mkdir -p assets/bibliocraft/textures/custompaintings
          pushd assets/bibliocraft/textures/custompaintings
          for i in $(find $paintings -type f); do
            convert $i -resize '512x512>' $(echo $(basename $i) | sed 's/\..*//').png &
          done
          wait
          popd
          chmod u+w tmp.zip
          zip -r tmp.zip assets
          mv tmp.zip $out
        '';
      };
  };


  ## Fetching mods from Curse.
  
  fetchCurse = {
      name,
      version ? "unknown",
      # This is bloody useless. This whole thing could use a rewrite. It'll do for now.
      target ? name + "-1.7.10-" + version + ".jar",
      side ? "BOTH",
      required ? true
  }: let
    curse = "http://minecraft.curseforge.com";
    fullName = builtins.replaceStrings ["-" "(" ")"] ["" "_" "_"] name + "-" + version;
    filesUrl = curse + "/projects/" + name + "/files?filter-game-version=2020709689%3A4449";
    download = import (mkDerivation rec {
      name = "drv-" + fullName;

      buildInputs = [ curl xidel ];

      inherit curse filesUrl target;
      builder = ./fetchCurse.sh;
    });
    in mkMod {
      name = name + "-" + version;
      src = fetchurl {
        url = download.url;
        md5 = download.md5;
      };
      inherit side required;
    };

  ## Server-pack builder:

  serverParams = {
    serverId,
    serverDesc,
    server,
    packUrlBase ? "https://madoka.brage.info/pack",
    forgeMajor,
    forgeMinor,
  }: let
    serverUrlBase = packUrlBase + "/packs/" + serverId;
  in {
    serverId = serverId;
    serverDesc = serverDesc;
    forgeUrl = "https://files.mcupdater.com/example/forge.php?mc=${forgeMajor}&forge=${forgeMinor}";
    mods = lib.mapAttrs (name: mod: let details = import mod; in {
      modId = name;
      url = serverUrlBase + "/mods/" + builtins.baseNameOf mod.outPath;
      modpath = "mods/" + details.modpath;
      side = mod.side;
      required = mod.required;
      modtype = mod.modtype;
      md5 = details.md5;
    }) server.mods;
    configs = lib.mapAttrs (name: md5: {
      configId = name;
      url = serverUrlBase + "/configs/" + name + ".zip";
      inherit md5;
    }) (import server.baseMinecraft);
  };

  mkServerPackDir = {
    serverId,
    serverDesc,
    server,
  }: mkDerivation rec {
    name = serverId + "-packdir";

    modList = builtins.attrValues server.mods;
    configs = server.baseMinecraft;
    inherit serverId;

    builder = mkBuilder ''
      mkdir -p $out/$serverId/{mods,configs}
      
      for mod in $modList; do
        ln -s $mod/mods/*.jar $out/$serverId/mods/$(basename $mod)
      done

      ln -s $configs/*.zip $out/$serverId/configs/
    '';
  };

  mkServerPack = {
    servers,
    forgeMajor,
    forgeMinor,
  }:  mkDerivation rec {
    name = "ServerPack";

    buildInputs = [ saxonb ];

    stylesheet = ./serverpack.xsl;

    paramsText = let
      params = lib.mapAttrs (name: desc: serverParams (desc // {
        inherit forgeMajor forgeMinor;
      })) servers;
      paramsWRevision = lib.mapAttrs (name: desc: desc // {
        revision = builtins.hashString "sha256" (builtins.toXML desc);
      }) params;
    in writeTextFile {
      name = "params.xml";
      text = builtins.toXML paramsWRevision;
    };
    
    packDirs = builtins.map mkServerPackDir (builtins.attrValues servers);

    builder = mkBuilder ''
      mkdir -p $out/packs
      saxon8 $paramsText ${stylesheet} > $out/ServerPack.xml

      for pack in $packDirs; do
        ln -s $pack/* $out/packs/
      done
    '';
  };

}
