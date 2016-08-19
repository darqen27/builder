#!/usr/bin/env nix-shell
#!nix-shell -i bash -p jekyll

set -e
cd $(dirname $0)
jekyll server -d $(mktemp -d)
