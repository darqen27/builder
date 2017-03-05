with import <nixpkgs> {};
with stdenv;

with import ./lib/lib.nix;
with import ./lib/sprocket;

let protonPack = mkDerivation {
  name = "proton-1.0.9";
  buildInputs = [ unzip ];
  src = manifest/Proton-1.0.9.zip;
  installPhase = "mkdir $out; cd $out; unzip $src";
}; in

rec {

  packs = {
    proton = buildPack proton;
  };

  proton = {
    name = "proton";
    screenName = "proton";
    port = 25567;
    forge = {
      major = "1.10.2";
      minor = "12.18.3.2239";
    };
    # These are copied to the client as well as the server.
    # Suggested use: Configs. Scripts. That sort of thing.
    extraDirs = [
      "${protonPack}/overrides"
      ./base-proton
      # (generateCustomOreGenConfig ./COGConfig)
    ];
    # Server only.
    extraServerDirs = [
      ./base-server
    ];
    # These are all the mods we'd like to include in this pack.
    # (Not yet, they're not.)
    manifests = [
      ./manifest/Proton-1.0.9.nix
      ./manifest/tools.nix
    ];
    # Not all mods are equally welcome.
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
