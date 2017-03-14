# This file is for Hydra. Don't worry about it.

let
  pkgs = import <nixpkgs> {};
  jobs = import ./default.nix;
in

{
  ServerPack = jobs.ServerPack;
}
