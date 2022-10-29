#!/usr/bin/env bash

if ! command -v dconf >/dev/null; then
  echo Command 'dconf' not found >&2
  exit 127
fi

load=false
save=false
case $1 in
    load) load=true;  save=false ;;
    save) load=false; save=true  ;;
    *)
      echo Usage:
      echo "    $0 load DST_NAME [SRC_NAME]" >&2
      echo "    $0 save NAME" >&2
      exit 1
      ;;
esac

if [[ -z "$2" ]]; then
  if [[ $load = true ]]; then
      echo "Usage: $0 load DST_NAME [SRC_NAME]" >&2
      exit 1
  else
      echo "Usage: $0 save NAME" >&2
      exit 1
  fi
fi

DIRNAME=$(cd `dirname ${BASH_SOURCE[0]}`; echo $PWD)
NAMESPACE=/org/gnome/terminal/legacy/profiles:/

if dconf list $NAMESPACE | grep ^: | sed "s|^|$NAMESPACE|" | while read PROFILE; do
  name=`dconf read "${PROFILE}visible-name"`
  name="${name//\'/}"
  if [[ "$name" = "$2" ]]; then
    if [[ $load = true ]]; then
        dconf load "$PROFILE" <"$DIRNAME/dconf/${3:-$name}"
    else
        dconf dump "$PROFILE" | grep -v 'visible-name' >"$DIRNAME/dconf/$name"
    fi
    exit 1
  fi
done; then
  echo Cannot find profile \'$2\' >&2
  exit 4
fi
