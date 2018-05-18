with import <nixpkgs> {};
with stdenv;

with import ./lib/lib.nix;
with import ./lib/sprocket;

let resources = runLocally "resources-1.12" {
      sphax = fetchurl {
        url = https://madoka.brage.info/baughn/Sphax64x_FTB_Revelation.zip;
        sha256 = "03jdl0y2z00gnvc18gw69jcx08qigf6fbj09ii21gikh1fg4imfi";
      };
    } ''
      mkdir -p $out/resourcepacks $out/shaderpacks
      #ln -s $seus $out/shaderpacks/SEUS-v11.0.zip
      #ln -s $faithful $out/resourcepacks/F32-1.10.2.zip
      ln -s $sphax $out/resourcepacks/Sphax.zip
    '';
in

rec {

  packs = {
    e20 = buildPack e20;
  };

  e20 = {
    name = "erisia20";
    screenName = "e20";
    description = "Erisia #20: Erisia Aeternum";
    ram = "10000m";
    port = 25565;
    forge = {
      major = "1.12.2";
      minor = "14.23.3.2679";  # TODO: Should be able to get this from manifest.json
    };
    # These are copied to the client as well as the server.
    # Suggested use: Configs. Scripts. That sort of thing.
    # Higher entries override later ones.
    extraDirs = [
      ./base/erisia
      ./third_party/ruins-1.12
      ./base/enigmatica2
    ];
    extraServerDirs = [
      ./base/server
    ];
    extraClientDirs = [
      resources
      ./base/client
    ];
    # These are all the mods we'd like to include in this pack.
    manifests = [
      ./manifest/e20.nix
    ];
    blacklist = [
      "creeperhost-minetogether"  # Fuck that.
      "fps-reducer"  # Seems to cause a memory leak?
    ];
  };

  ServerPack = buildServerPack rec {
    inherit packs;
    hostname = "madoka.brage.info";
    urlBase = "https://madoka.brage.info/pack/";
  };

  # To use:
  # nix-build -A ServerPackLocal && (cd result && python -m SimpleHTTPServer)
  ServerPackLocal = buildServerPack rec {
    inherit packs;
    hostname = "localhost:8000";
    urlBase = "http://" + hostname + "/";
  };

  web = callPackage ./web {};
}
