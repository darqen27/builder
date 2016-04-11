#!/usr/bin/env bash

set -eu
GITDIR=$(basename $(dirname $(readlink -f $0)))

if [ ! \( -d world -a -d mods -a -d server \) ]; then
    echo "$(pwd) doesn't look like a Minecraft server directory."
    echo "Are you sure you want to setup Erisia in it?"
    echo "Press return to continue, ctrl-c to abort."
    read
fi

# Create a cache dir to keep the mods live, so they don't get GC'd.
# I don't trust CurseForge.
[ -d mod_cache ] || mkdir mod_cache
(cd mod_cache; nix-build ../$GITDIR -A mods -o mod --show-trace)

# Link in this script, for later use.
ln -sf $GITDIR/{update-and-,}start.sh .

# Start the server.
nix-build $GITDIR -A server -o server --show-trace
nix-build $GITDIR -A ServerPack -o pack --show-trace

exec server/start.sh
