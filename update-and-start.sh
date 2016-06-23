#!/usr/bin/env bash

set -eu
GITDIR=$(dirname $(readlink -f $0))

if [ ! \( -d world -a -d mods -a -d server \) ]; then
    echo "$(pwd) doesn't look like a Minecraft server directory."
    echo "Are you sure you want to setup Erisia in it?"
    echo "Press return to continue, ctrl-c to abort."
    read
fi

# Link in this script, for later use.
ln -sf $GITDIR/{update-and-,}start.sh .

if [[ ! -f server.nix-target ]]; then
    SERVERS=$(nix-instantiate --eval --strict -E "builtins.attrNames (import \"$GITDIR\").servers" | sed -r 's/(["[]|\])//g')
    echo "Which server do you want to build?"
    select server in $SERVERS; do
        echo $server > server.nix-target
        break
    done
fi

# Start the server.
nix-build $GITDIR -A "servers.$(cat server.nix-target)" -o server --show-trace
nix-build $GITDIR -A ServerPack -o pack --show-trace

exec server/start.sh
