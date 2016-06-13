#!/usr/bin/env nix-shell
#!nix-shell -i bash -p jdk rsync screen --pure

set -eux

BASE=$(dirname $0)
JAR=forge-universal.jar

fixperms() {
    find $1 -exec chmod a+r {} +
    find $1 -exec chmod u+w {} +
    find $1 -type d -exec chmod a+x {} +
}

# Yes, we delete everything on every startup.
# This is very much intended. To avoid redownloads, let's put anything that got downloaded
# into the pack definition in default.nix.
for f in $BASE/*; do
    b=$(basename $f)
    if [[ $b = "config" ]]; then
        # Except for the config dir, just because a lot of mods cache things there.
        # For some reason. Isn't this what the world dir is for, guys?
        rsync -a server/config .
    elif [[ $b = "start.sh" ]]; then
        # Don't copy this script.
        continue
    else
        [[ -e $b ]] && fixperms $b && rm -rf $b
        cp -aL $f .
    fi
    fixperms $b
done

rm -f gc.log

(
  # TODO: Factor in scripts.sh
  say() {
    screen -S e12 -p 0 -X stuff  "$@"`echo -ne '\015'`
  }
  set +e

  sleep 300
  while true; do
    sleep 60
    say 'save-on'
    say 'save-all'
#    sleep 5
    say 'save-off'
    sleep 1800
  done
) &
spid=$!
trap "kill $spid" EXIT

java -d64 -server -mx10G \
  -Djava.net.preferIPv4Stack=true \
  -XX:+AggressiveOpts \
  -XX:+UseG1GC \
  -XX:+DisableExplicitGC -XX:MaxGCPauseMillis=500 \
  -XX:+UseAdaptiveGCBoundary \
  -XX:+StartAttachListener \
  -XX:+PrintGC -XX:+PrintGCTimeStamps -Xloggc:gc.log \
  -jar $JAR nogui
