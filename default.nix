with import <nixpkgs> {};
with stdenv;

with import ./lib.nix;

let serverName = "erisia-12"; in

rec {
  server = mkServer {
    name = serverName;

    mods = mods;

    forge = fetchForge {
      major = "1.7.10"; minor = "10.13.4.1566";
      sha1 = "4d2xzm7w6xwk09q7sbcsbnsalc09xp0v";
    };

    # These are applied in order. In case of overwrites nothing is deleted.
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
    dynmap = fetchMod {
      name = "dynmap-2.2";

      side = "SERVER";

      src = fetchurl {
        url = http://minecraft.curseforge.com/projects/dynmapforge/files/2246830/download;
        md5 = "36dcb76c6aba48be4f80e73fc27fe137";
      };
    };

    agricraft = fetchMod {
      name = "agricraft-1.5.0";

      src = fetchurl {
        url = http://minecraft.curseforge.com/projects/agricraft/files/2284130/download;
        md5 = "12103c50b42df790479492781326928d";
      };
    };

    automagy = fetchMod {
      name = "automagy-0.28.2";

      src = fetchurl {
        url = http://minecraft.curseforge.com/projects/automagy/files/2285272/download;
        md5 = "0d1b46683a9c69a59368406b7db4671f";
      };
    };

    DragonAPI = fetchMod {
      name = "DragonAPI-11b";

      src = fetchurl {
        url = http://minecraft.curseforge.com/projects/dragonapi/files/2284316/download;
        md5 = "ea92328be71f2ba685e33cdcc468cf57";
      };
    };

    RotaryCraft  = fetchMod {
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

    sides = {
      #AOBD = "CLIENT";
    };
  };
}
