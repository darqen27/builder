#!/usr/bin/env nix-shell
#!nix-shell -i bash -p

set -eu
cd $(dirname $0)

for f in *.json; do
  if [[ "$f" == *"fixed"* ]]; then
    continue
  fi
  if [[ "$f" == *"1.7.10"* ]]; then
    # No 1.7 packs we'd like to update right now.
    #./genNix.py 1.7.10 < "$f" > $(basename "$f" .json).nix &
    true
  elif [[ "$f" == *"1.10.2"* ]]; then
    ./genNix.py 1.10.2 < "$f" > $(basename "$f" .json).nix &
  else
    #./genNix.py 1.7.10 < "$f" > 1.7.10-$(basename "$f" .json).nix &
    ./genNix.py 1.10.2 < "$f" > 1.10.2-$(basename "$f" .json).nix &
  fi
done
wait
