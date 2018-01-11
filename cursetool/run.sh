#!/usr/bin/env bash

set -eux

SRC="$(dirname "$(readlink -f "$0")")"

if which gradle 2>/dev/null; then
  GRADLE=$(which gradle)
else
  GRADLE=./gradlew
fi

pushd "$SRC"
  $GRADLE build
  tar xf build/distributions/cursetool-0.1.tar
popd
"$SRC"/cursetool-0.1/bin/cursetool "$@"
