#! /run/current-system/sw/bin/nix-shell
#! nix-shell -i bash -p screen curl coreutils

set -eu -o pipefail

cd "$(dirname "$(readlink -f "$0")")"

source ./scripts.sh

say 'difficulty 0'
sleep 5
say 'difficulty 3'
sleep 10

maybestop() {
  if [[ $(players) = 0 ]]; then
    stop
    exit
  fi
}

stop() {
  say save-on
  say save-all
  sleep 5
  say stop
}

case "${1:-}" in
  now)
    say "say Server restarting NOW"
    sleep 10
    stop
    ;;
  later)
    say "say Server restarting once empty"
    while true; do sleep 10; maybestop; done
    ;;
  '')
    for grace in `seq 3 -1 1`; do
      maybestop
      say "say Server restarting in $grace minutes, or when empty"
      sleep 60
    done
    stop
    ;;
  *)
    echo "Unknown parameter $1"
    echo "Syntax: $0 [now|later|<empty>]"
    ;;
esac
