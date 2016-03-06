#with import <nixpkgs> {};
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
  };

  mods = bevos.mods // {
    dynmap = fetchMod {
      name = "dynmap-2.2";

      side = "SERVER";

      src = fetchurl {
        url = http://minecraft.curseforge.com/projects/dynmapforge/files/2246830/download;
        md5 = "36dcb76c6aba48be4f80e73fc27fe137";
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
