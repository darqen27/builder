#!/usr/bin/env nix-shell
#!nix-shell -i bash -p

set -eu
cd $(dirname $0)

for f in *.json; do
  if [[ "$f" == *"fixed"* ]]; then
    continue
  fi
  if [[ "$f" == *"1.7.10"* ]]; then
    ./genNix.py 1.7.10 < "$f" > $(basename "$f" .json).nix &
  elif [[ "$f" == *"1.10.2"* ]]; then
    ./genNix.py 1.10.2 < "$f" > $(basename "$f" .json).nix &
  else
    #./genNix.py 1.7.10 < "$f" > 1.7.10-$(basename "$f" .json).nix &
    ./genNix.py 1.10.2 < "$f" > 1.10.2-$(basename "$f" .json).nix &
  fi
done
wait
