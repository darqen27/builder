with import <nixpkgs> {};
with stdenv;

with import ./lib/lib.nix;
with import ./lib/sprocket;

let protonPack = unpackZip "proton-packfile" manifest/Proton-1.0.9.zip {};
    sf3Pack = unpackZip "sf3-packfile" manifest/Skyfactory-3.0.6.zip {
      exclude = ["overrides/mods/foamfix-0.5.3-anarchy.jar"];
    };
in

rec {

  packs = {
    sf3 = buildPack sf3;
    proton = buildPack proton;
  };

  sf3 = {
    name = "SkyFactory3";
    screenName = "sf3";
    port = 25567;
    forge = {
      major = "1.10.2";
      minor = "12.18.3.2239";
    };
    # These are copied to the client as well as the server.
    # Suggested use: Configs. Scripts. That sort of thing.
    extraDirs = [
      "${sf3Pack}/overrides"
      ./base-sf3
      # (generateCustomOreGenConfig ./COGConfig)
    ];
    # Server only.
    extraServerDirs = [
      ./base-server
    ];
    # These are all the mods we'd like to include in this pack.
    # (Not yet, they're not.)
    manifests = [
      ./manifest/Skyfactory-3.0.6.nix
      ./manifest/tools.nix
    ];
    # Not all mods are equally welcome.
    blacklist = [
      # Conflicts with HWYLA.
      "waila"
      # Already exists in Proton.
      # "fullscreen-windowed-borderless-for-minecraft"
    ];
  };

  proton = {
    name = "proton";
    screenName = "proton";
    port = 25567;
    forge = {
      major = "1.10.2";
      minor = "12.18.3.2239";
    };
    extraDirs = [
      "${protonPack}/overrides"
      ./base-proton
    ];
    extraServerDirs = [
      ./base-server
    ];
    manifests = [
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
    urlBase = "https://" + hostname + "/";
  };

  # To use:
  # nix-build -A ServerPackLocal && (cd result && python -m SimpleHTTPServer)
  ServerPackLocal = buildServerPack rec {
    inherit packs;
    hostname = "localhost:8000";
    urlBase = "http://" + hostname + "/";
  };

}
