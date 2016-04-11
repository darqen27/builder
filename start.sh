#!/usr/bin/env bash

set -eu
cd $(dirname $0)

[ -d mutable ] || echo 'No server exists! Use update-and-start.sh instead.' && exit 1

# Start the server.
cd mutable

while true; do
    server/start.sh
    echo 'Waiting 10 seconds before restarting'
    sleep 10
done
