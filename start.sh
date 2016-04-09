#!/usr/bin/env bash

set -eux
cd $(dirname $0)

# Create a cache dir to keep the mods live, so they don't get GC'd.
# I don't trust CurseForge.
[ -d mod_cache ] || mkdir mod_cache
(cd mod_cache; nix-build .. -A mods -o mod --show-trace)

# Start the server.
[ -d mutable ] || mkdir mutable
cd mutable

nix-build .. -A server -o server --show-trace
nix-build .. -A ServerPack -o pack --show-trace

exec server/start.sh
