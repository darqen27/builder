with import <nixpkgs> {};
with stdenv;

with import ./lib/lib.nix;
with import ./lib/sprocket;

# let resources = runLocally "resources-1.10" {
#       seus = fetchurl {
#         url = https://madoka.brage.info/baughn/SEUS-v11.0.zip;
#         sha256 = "0mlasvmfvcbf9krl7r20h2gw0q34ws48gavpiiic6x66ngikilh3";
#       };
#       faithful = fetchurl {
#         url = https://madoka.brage.info/baughn/F32-1.10.2.zip;
#         sha256 = "0jk3sllhg1pgjpwkd8cyj3xlgrq44rriwjs7kz72jykxkcyw5h5p";
#       };
#       invictus = fetchurl {
#         url = https://madoka.brage.info/baughn/Invictus-3.1.zip;
#         sha256 = "0z03fhyxf51g5caf464gwqb3hcnpgf9n8csmf26cxq7fqfg0sbl8";
#       };
#     } ''
#       mkdir -p $out/resourcepacks $out/shaderpacks
#       ln -s $seus $out/shaderpacks/SEUS-v11.0.zip
#       ln -s $faithful $out/resourcepacks/F32-1.10.2.zip
#       ln -s $invictus $out/resourcepacks/Invictus-3.1.zip
#     '';
# in

rec {

  packs = {
    e18 = buildPack e18;
    city = buildPack city;
  };

  city = {
    name = "city";
    ram = "8000m";
    description = "Just cities";
    forge = {
      major = "1.10.2";
      minor = "12.18.3.2422";
    };
    screenName = "city";
    port = 25566;
    extraServerDirs = [
      ./base-server
    ];
    manifests = [
      ./manifest/city.nix
    ];
  };

  e18 = tppi2 // {
    name = "e18";
    description = "Erisia #18: Test Pack, Don't Ignore";
    screenName = "e18";
    port = 25565;
    manifests = [
      ./manifest/erisia.nix
    ];
  };

  tppi2 = {
    ram = "6000m";
    forge = {
      major = "1.7.10";
      minor = "10.13.4.1614";
    };
    # These are copied to the client as well as the server.
    # Suggested use: Configs. Scripts. That sort of thing.
    # Higher entries override later ones.
    extraDirs = [
      ./base-tppi2
      # resources
      # (generateCustomOreGenConfig ./COGConfig)
    ];
    extraServerDirs = [
      ./base-server
    ];
    extraClientDirs = [
      ./client-tppi2
      # resources
    ];
    # These are all the mods we'd like to include in this pack.
    manifests = [
      ./manifest/TPPI2.nix
    ];
    # Not all mods are equally welcome.
    blacklist = [
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
