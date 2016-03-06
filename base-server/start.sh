#!/usr/bin/env nix-shell
#!nix-shell -i bash -p jdk --pure

set -eux

BASE=$(dirname $0)
JAR=forge-universal.jar

# Yes, we delete everything on every startup.
# This is very much intended. To avoid redownloads, let's put things in scripts.
for f in $BASE/*; do
    b=$(basename $f)
    rm -rf $b
    cp -a $f .
    chmod -R 0755 $b
done

java -d64 -server -Xmn512m -Xms1g -Xmx10g \
  -Djava.net.preferIPv4Stack=true \
  -XX:+AggressiveOpts \
  -XX:+UseG1GC \
  -XX:+DisableExplicitGC -XX:MaxGCPauseMillis=150 -XX:SurvivorRatio=8 \
  -XX:TargetSurvivorRatio=85 -XX:+UseAdaptiveGCBoundary \
  -XX:+StartAttachListener \
  -jar $JAR nogui
