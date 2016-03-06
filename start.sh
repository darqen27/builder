#!/usr/bin/env bash

set -eux
cd $(dirname $0)

[ -d mutable ] || mkdir mutable
cd mutable

nix-build .. -A server

result/start.sh
