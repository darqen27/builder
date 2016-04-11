#!/usr/bin/env bash

set -eu
GITDIR=$(basename $(dirname $(readlink -f $0)))

if [ ! \( -d world -a -d mods -a -d server \) ]; then
    echo "$(pwd) doesn't look like a Minecraft server directory."
    echo "Cannot start. If you want to create a new server, use update-and-start.sh instead."
    exit 1
fi

# Start the server.
while true; do
    server/start.sh
    echo 'Waiting 10 seconds before restarting'
    sleep 10
done
