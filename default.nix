with import <nixpkgs> {};
with stdenv;

with import ./lib/lib.nix;
with import ./lib/sprocket;

let protonPack = unpackZip "proton-packfile" manifest/Proton-1.0.9.zip {};
    torquedPack = unpackZip "torqued-packfile" manifest/NutsandBoltsTorqued-1.6.4.7.zip {
      exclude = [
        "overrides/mods/foamfix-0.5.4-anarchy.jar"
      ];
    };
    sf3Pack = unpackZip "sf3-packfile" manifest/Skyfactory-3.0.8.zip {
      exclude = [
        "overrides/mods/foamfix-0.6.1-anarchy.jar"
#        "overrides/mods/CraftTweaker-1.10.2-3.0.20.14.jar"
      ];
    };
    resources = runLocally "resources-1.10" {
      seus = fetchurl {
        url = https://madoka.brage.info/baughn/SEUS-v11.0.zip;
        sha256 = "0mlasvmfvcbf9krl7r20h2gw0q34ws48gavpiiic6x66ngikilh3";
      };
      faithful = fetchurl {
        url = https://madoka.brage.info/baughn/F32-1.10.2.zip;
        sha256 = "0jk3sllhg1pgjpwkd8cyj3xlgrq44rriwjs7kz72jykxkcyw5h5p";
      };
      invictus = fetchurl {
        url = https://madoka.brage.info/baughn/Invictus-3.1.zip;
        sha256 = "0z03fhyxf51g5caf464gwqb3hcnpgf9n8csmf26cxq7fqfg0sbl8";
      };
    } ''
      mkdir -p $out/resourcepacks $out/shaderpacks
      ln -s $seus $out/shaderpacks/SEUS-v11.0.zip
      ln -s $faithful $out/resourcepacks/F32-1.10.2.zip
      ln -s $invictus $out/resourcepacks/Invictus-3.1.zip
    '';
in

rec {

  packs = {
    erisia-17 = buildPack torqued;
    proton = buildPack proton;
  };

  torqued = {
    name = "NutsAndBoltsTorqued";
    description = "Erisia #17: Canis meus id comedit";
    screenName = "e17";
    port = 25565;
    forge = {
      major = "1.10.2";
      minor = "12.18.3.2254";
    };
    # These are copied to the client as well as the server.
    # Suggested use: Configs. Scripts. That sort of thing.
    # Higher entries override later ones.
    extraDirs = [
      ./base-torqued
      "${torquedPack}/overrides"
      resources
      # (generateCustomOreGenConfig ./COGConfig)
    ];
    extraServerDirs = [
      ./base-server
    ];
    extraClientDirs = [
      resources
    ];
    # These are all the mods we'd like to include in this pack.
    # (Not yet, they're not.)
    manifests = [
      ./manifest/NuttyExtras.nix
      ./manifest/NutsandBoltsTorqued-1.6.4.7.nix
      ./manifest/tools.nix
    ];
    # Not all mods are equally welcome.
    blacklist = [
      # Conflicts with HWYLA.
      "waila"
      # Don't want roguelikes.
      "221585"
      # HQM sucks.
      "77027"
    ];
  };

  proton = {
    name = "proton";
    screenName = "proton";
    port = 25566;
    forge = {
      major = "1.10.2";
      minor = "12.18.3.2239";
    };
    extraDirs = [
      "${protonPack}/overrides"
      ./base-proton
      resources
    ];
    extraServerDirs = [
      ./base-server
    ];
    extraClientDirs = [
      resources
    ];
    manifests = [
      ./manifest/Proton-extras.nix
      ./manifest/Proton-1.0.9.nix
      ./manifest/tools.nix
    ];
    blacklist = [
      # Already exists in Proton.
      "fullscreen-windowed-borderless-for-minecraft"
    ];
  };

  ServerPack = buildServerPack rec {
    inherit packs;
    hostname = "madoka.brage.info";
    urlBase = "https://brage-cdn.stream/pack/";
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
