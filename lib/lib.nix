with import <nixpkgs> {};
with stdenv;

rec {
  mkBuilder = code: builtins.toFile "builder.sh" ("source $stdenv/setup\n" + code);

  mkServer = cfg: mkDerivation {
    name = cfg.name;

    src = ../base-server;

    forge = cfg.forge;
    modDirs = builtins.filter (m: m.side != "CLIENT") (builtins.attrValues cfg.mods);
    minecraft = fetchurl {
      url = https://s3.amazonaws.com/Minecraft.Download/versions/1.7.10/minecraft_server.1.7.10.jar;
      sha256 = "1z7kf8wm27yq10rnlwlig7c2vc45x3sfbxslw4lxh9201kq70267";
    };

    baseMinecraft = mkBaseMinecraft {
      extraDirs = cfg.extraDirs;
      configPatches = map mkPatch cfg.configPatches;
    };

    buildInputs = [ rsync ];

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

      # This is for the serverpack.
      cd $out
      chmod u+w .
      tmp=$(mktemp)
      echo '{' > $tmp
      for dir in *; do
        zip -qr $dir.zip $dir
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
      ln -s "$src" $out/mods/"$name".jar
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
      name = dir;
      src = cfg.src;
      inherit dir;

      builder = mkBuilder ''
        mkdir $out
        ln -s $src/$dir $out
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
          $base =~ s/ /_/g;
          my $version = shift;
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
          p($1, $+{version} . "-" . $+{type}) if /(.*BiblioWoods)\[(?<type>[^\]]+)\]\[v(?<version>[^\]]+)\].jar/;
          p($1, $+{version}) if /(.*BiblioCraft)\[v(?<version>[^\]]+)\]\[MC(?<mcversion>[^\]]+)\].jar/;
          p("ProjectRed" . $2, $1) if /ProjectRed-([0-9].*)-(.*).jar/;
          p($1, $2) if /(Steves.*?)([0-9A-Z][0-9\.].*).jar/;
          # This one works on the 98% of mods remaining.
          p($1, $2) if /(.*?)[-_ ]((mc|MC|rv|r|v|\[)?[0-9].*).jar/;
          print "ERROR: Couldn't parse " . $_;
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
}
