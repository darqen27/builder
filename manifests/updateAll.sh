#!/usr/bin/env nix-shell
#!nix-shell -i bash -p

set -eu
cd $(dirname $0)

for f in *.json; do
    ./genNix.py < "$f" > $(basename "$f" .json).nix
done
