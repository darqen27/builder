#!/usr/bin/env nix-shell
#!nix-shell -i bash -p jdk rsync screen

set -eu

BASE=$(dirname $0)
JAR=forge-universal.jar

fixperms() {
    find $1 -exec chmod a+r {} +
    find $1 -exec chmod u+w {} +
    find $1 -type d -exec chmod a+x {} +
}

if [[ -z ${STY:-} ]]; then
    echo "Expected to run inside a screen session named @screenName@."
    echo "Press enter if you know what you're doing, otherwise ctrl-c. Maintenance scripts will not be run."
    read
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

say() {
  screen -S @screenName@ -p 0 -X stuff  "$@"`echo -ne '\015'`
}


## Maintenance scripts ##
antiChunkChurn() {
    set +e
    sleep 30
    while true; do
      sleep 60
      say 'save-on'
      say 'save-all'
      sleep @saveTime@
      say 'save-off'
      sleep 1800
    done
}

dailyRestart() {
    # Restart the server at 06:00, and.. save the job ID in case we exit sooner.
    # Don't want to kill random processes.
    RESTARTJOB=$(at 06:00 -f <(echo "kill $$") 2>&1 | grep '^job ' | sed -r 's/job //; s/ at.*//')
}

cleanup() {
    if [[ -n "$(jobs -p)" ]]; then
        echo 'Killing all subprocesses...'
        kill $(jobs -p)
        wait
    fi
    atrm $RESTARTJOB
}

set -x

# TODO: Factor in scripts.sh, and other scripts.
if [[ $EXTRAS -eq 1 ]]; then
    trap cleanup EXIT
    [[ "@enableAntiChunkChurn@" = "1" ]] && antiChunkChurn &
    dailyRestart
fi

java -d64 -server -mx10G \
  -Djava.net.preferIPv4Stack=true \
  -XX:+AggressiveOpts \
  -XX:+UseG1GC \
  -XX:+DisableExplicitGC -XX:MaxGCPauseMillis=500 \
  -XX:+UseAdaptiveGCBoundary \
  -XX:+StartAttachListener \
  -XX:+PrintGC -XX:+PrintGCTimeStamps -Xloggc:gc.log \
  -jar $JAR nogui
