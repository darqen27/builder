with import <nixpkgs> {};
with stdenv;

with import ./lib/lib.nix;

let
  serverId = "erisia";
  serverName = "erisia-12";
  serverDesc = "Erisia #12: Vivat Apparatus";

  forgeMajor = "1.7.10";
  forgeMinor = "10.13.4.1566";

  packUrlBase = "https://madoka.brage.info/mods/";
in

rec {

  server = mkServer {
    name = serverName;

    mods = mods;

    forge = fetchForge {
      major = forgeMajor; minor = forgeMinor;
      sha1 = "4d2xzm7w6xwk09q7sbcsbnsalc09xp0v";
    };

    # These are applied in order. In case of overwrites nothing is deleted.
    # They're also copied to the client, after applying the below patches.
    extraDirs = [
      (bevos.getDir "config")
      (bevos.getDir "scripts")
      (bevos.getDir "libraries")
    ];

    # These are applied after everything else.
    # And in order, if it matters.
    # TODO: Write something that understands what it's doing.
    configPatches = [
      ''sed -i StorageDrawers.cfg -e s/B:invertShift=false/B:invertShift=true/''
    ];
  };

  mods = bevos.mods // {
    # TODO: A fetchCurse which autogenerates most of this.
    dynmap = mkMod {
      name = "dynmap-2.2";

      # Options such as 'required' also work.
      side = "SERVER";

      src = fetchurl {
        url = http://minecraft.curseforge.com/projects/dynmapforge/files/2246830/download;
        md5 = "36dcb76c6aba48be4f80e73fc27fe137";
      };
    };

    agricraft = mkMod {
      name = "agricraft-1.5.0";
      src = fetchurl {
        url = http://minecraft.curseforge.com/projects/agricraft/files/2284130/download;
        md5 = "12103c50b42df790479492781326928d";
      };
    };

    automagy = mkMod {
      name = "automagy-0.28.2";
      src = fetchurl {
        url = http://minecraft.curseforge.com/projects/automagy/files/2285272/download;
        md5 = "0d1b46683a9c69a59368406b7db4671f";
      };
    };

    DragonAPI = mkMod {
      name = "DragonAPI-11b";
      src = fetchurl {
        url = http://minecraft.curseforge.com/projects/dragonapi/files/2284316/download;
        md5 = "ea92328be71f2ba685e33cdcc468cf57";
      };
    };

    RotaryCraft = mkMod {
      name = "RotaryCraft-11b";
      src = fetchurl {
        url = http://minecraft.curseforge.com/projects/rotarycraft/files/2284297/download;
        md5 = "39305dd786c456db7dcd9fe326d41bea";
      };
    };
  };

  bevos = mkBasePack {
    src = fetchzip {
      url = https://madoka.brage.info/baughn/Bevos.zip;
      sha256 = "1d2n1zyx17ggdf84rsay9yjqc3kd51d2gqmiri6y5g15i9jrm3jf";
      stripRoot = false;
    };

    # This lets you set options for mods in the base back.
    # Same way as for mods added above.
    modConfig = {
      AOBD = {
        # Probably don't want to, though.
        # required = false;
        # side = "CLIENT";
      };
    };
  };

  ServerPack = let
    baseParams = {
      serverId = serverId;
      serverDesc = serverDesc;
      forgeUrl = "https://files.mcupdater.com/example/forge.php?mc=${forgeMajor}&forge=${forgeMinor}";
      mods = lib.mapAttrs (name: mod: {
        modId = name;
        url = packUrlBase + builtins.baseNameOf mod.outPath;
        side = mod.side;
        required = mod.required;
        modtype = mod.modtype;
        md5 = (import mod).md5;
      }) mods;
    };
  in
  mkDerivation (rec {
    name = "ServerPack";

    buildInputs = [ libxslt ];

    stylesheet = ./lib/serverpack.xsl;

    modList = builtins.attrValues mods;

    params = writeTextFile {
      name = "params.xml";
      text = builtins.toXML (baseParams // {
        revision = builtins.hashString "sha256" (builtins.toXML baseParams);
      });
    };

    builder = mkBuilder ''
      mkdir -p $out/mods
      xsltproc ${stylesheet} $params > $out/ServerPack.xml

      for mod in $modList; do
        ln -s $mod/mods/*.jar $out/mods/$(basename $mod)
      done
    '';


  });
              
}
