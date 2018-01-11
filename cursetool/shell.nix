# This is intended to be used with nix-shell.
# It provides a dev environment for gradle.

with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "devenv";

  buildInputs = [ gradle jdk ];

  libraries = stdenv.lib.makeLibraryPath [ stdenv.cc.cc ];

  shellHook = ''
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$libraries
  '';
}
