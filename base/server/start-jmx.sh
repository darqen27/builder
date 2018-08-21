#!/usr/bin/env nix-shell
#!nix-shell -i bash -p jre8 rsync screen

set -eu

BASE=$(dirname $0)
JAR='forge/forge-*-universal.jar'

fixperms() {
    if [[ ! -L $1 ]]; then
        find $1 -exec chmod a+r {} +
        find $1 -exec chmod u+w {} +
        find $1 -type d -exec chmod a+x {} +
    fi
}

if [[ -z ${STY:-} ]]; then
    echo "Expected to run inside a screen session named @screenName@."
    if [[ -z ${FORCE:-} ]]; then
        echo "Press enter if you know what you're doing, otherwise ctrl-c. Maintenance scripts will not be run."
        read
    fi
    EXTRAS=0
elif [[ ${STY##*.} != @screenName@ ]]; then
    echo "Expected to run inside a screen session named @screenName@."
    echo "Actually running in ${STY##*.}."
    echo "Aborting."
    exit 1
else
    EXTRAS=1
fi

# Yes, we delete everything on every startup.
# This is very much intended. To avoid redownloads, let's put anything that got downloaded
# into the pack definition in default.nix.
for f in $BASE/*; do
    b=$(basename $f)
    case "$b" in
        config)
            # Don't overwrite the config dir, because some mods cache data there.
            # Isn't this what the world dir is for, guys?
            rsync -acL server/config .
            ;;
        start.sh)
            # Don't copy this script.
            continue
            ;;
        forge | resources)
            # Don't copy at all.
            ln -sf "$f" .
            ;;
        *.properties | *.json)
            ## Copy, but only if nonexistent.
            [[ -e "$b" ]] || cp -aL "$f" "$b"
            ;;
        *)
            [[ -e "$b" ]] && fixperms "$b" && rm -rf "$b"
            cp -aL "$f" .
            ;;
    esac
    fixperms "$b"
done

rm -f gc.log

say() {
  screen -S @screenName@ -p 0 -X stuff  "$@"`echo -ne '\015'`
}


## Maintenance scripts ##
dailyRestart() {
    while true; do
      sleep 45
      if [[ $(date +%R) = 06:00 ]]; then
        ./stop.sh
        exit
      fi
      if [[ $(date +%R) = 18:00 ]]; then
        ./stop.sh
        exit
      fi
    done
}

cleanup() {
    if [[ -n "$(jobs -p)" ]]; then
        echo 'Killing all subprocesses...'
        kill $(jobs -p)
        wait
    fi
}

antiChunkChurn() {
    set +e
    sleep 600
    while true; do
      sleep 60
      say 'save-on'
      say 'chunkpurge enable true'
      say 'chunkpurge delay 60'
      say 'save-all'
      sleep 10
      say 'chunkpurge delay 6000'
      sleep 20   #@saveTime@
      say 'chunkpurge enable false'
      say 'save-off'
      sleep 1800
    done
}

set -x

# TODO: Factor in scripts.sh, and other scripts.
if [[ $EXTRAS -eq 1 ]]; then
    trap cleanup EXIT
    dailyRestart &
#    antiChunkChurn &
fi

java -d64 -server -Xmx@ram@ \
  "$@" \
  -Djava.net.preferIPv4Stack=true \
  -XX:+AggressiveOpts \
  -XX:+UseTransparentHugePages \
  -XX:+UseG1GC \
  -XX:+UnlockExperimentalVMOptions \
  -XX:G1HeapRegionSize=32M \
  -XX:G1NewSizePercent=20 \
  -XX:+DisableExplicitGC -XX:MaxGCPauseMillis=500 \
  -XX:+UseAdaptiveGCBoundary \
  -XX:+StartAttachListener \
  -XX:+PrintGC -XX:+PrintGCTimeStamps -Xloggc:gc.log \
  -Dcom.sun.management.jmxremote \
  -Dcom.sun.management.jmxremote.port=9010 \
  -Dcom.sun.management.jmxremote.rmi.port=9010 \
  -Djava.rmi.server.hostname=127.0.0.1 \
  -Dcom.sun.management.jmxremote.authenticate=false \
  -Dcom.sun.management.jmxremote.ssl=false \
  -jar $JAR nogui
