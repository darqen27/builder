#!/usr/bin/env nix-shell
#!nix-shell -i bash -p jdk

cd $(dirname $0)

java \
  -Djava.library.path=${JAVA_HOME}/jre/bin \
  -cp ${JAVA_HOME}/lib/tools.jar:warmroast-1.0.0-SNAPSHOT.jar \
  com.sk89q.warmroast.WarmRoast --thread "Server thread" \
  --mappings ${HOME}/src/mcp/conf

