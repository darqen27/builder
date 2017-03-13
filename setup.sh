#!/usr/bin/env bash

# Run this script to setup a newly checked-out git repo.

set -e
cd "$(dirname "$(readlink -f $0)")"/.git/hooks

ln -sf ../../hooks/* .
