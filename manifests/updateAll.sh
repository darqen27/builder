#!/usr/bin/env nix-shell
#!nix-shell -i bash -p

set -eu
cd $(dirname $0)

for f in *.json; do
    if [[ ${f:0:6} != 'fixed-' ]]; then
       ./genNix.py < "$f" > $(basename "$f" .json).nix &
    fi
done
wait
