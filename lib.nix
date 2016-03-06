with import <nixpkgs> {};
with stdenv;

let
  mkBuilder = code: builtins.toFile "builder.sh" ("source $stdenv/setup\n" + code);
in

rec {
  mkServer = cfg: mkDerivation {
    name = cfg.name;

    src = ./base-server;

    forge = cfg.forge;
    modDirs = builtins.attrValues cfg.mods;
    extraDirs = cfg.extraDirs;
    minecraft = fetchurl {
      url = https://s3.amazonaws.com/Minecraft.Download/versions/1.7.10/minecraft_server.1.7.10.jar;
      sha256 = "1z7kf8wm27yq10rnlwlig7c2vc45x3sfbxslw4lxh9201kq70267";
    };

    buildInputs = [ rsync ];

    builder = mkBuilder ''
      mkdir -p $out/mods

      rsync -a $src/ $out/
      chmod 0755 $out

      cp -p $forge $out/forge-universal.jar
      cp -p $minecraft $out/minecraft_server.1.7.10.jar

      for modDir in $modDirs; do
        rsync -a $modDir/mods/ $out/mods/
      done

      for extraDir in $extraDirs; do
        rsync -a $extraDir/ $out
      done
    '';
  };

  fetchMod = self: mkDerivation ({

    builder = mkBuilder ''
      mkdir -p $out/mods
      cp -p $src $out/mods/$name.jar
    '';
    
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

      buildInputs = [ rsync ];

      builder = mkBuilder ''
        rsync -a $src/$dir $out
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
          print "    path = \"mods/$_\";\n";
          print "    version = \"$version\";\n";
          print "  };\n\n";
          next;
        }

        print "{\n";
        while (<>) {
          $_ =~ s/\s+$//;
          p($1, $+{version} . "-" . $+{type}) if /(.*BiblioWoods)\[(?<type>[^\]]+)\]\[v(?<version>[^\]]+)\].jar/;
          p($1, $+{version}) if /(.*BiblioCraft)\[v(?<version>[^\]]+)\]\[MC(?<mcversion>[^\]]+)\].jar/;
          p("ProjectRed" . $2, $1) if /ProjectRed-([0-9].*)-(.*).jar/;
          p($1, $2) if /(Steves.*?)([0-9A-Z][0-9\.].*).jar/;
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

    
    mods = lib.mapAttrs mkMod (import baseModsNix);
   
    mkMod = name: mod: let
    in mkDerivation {
      inherit name;

      src = cfg.src;

      side = cfg.sides.${name} or "BOTH";

      builder = mkBuilder ''
        mkdir -p $out/mods

        cp -p $src/"${mod.path}" $out/mods/
        #echo $side > $out/SIDE
      '';
    };
  };
}
