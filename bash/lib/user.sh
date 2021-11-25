#!/usr/bin/env bash

srcenv() {
  if [[ ! -e "${1:-.env}" ]]; then
    echo >&2 "${1:-.env} does not exists"
    return 1
  fi
  set -o allexport
  . ${1:-.env}
  set +o allexport
}

env2json() {
  if [[ ! -e "${1:-.env}" ]]; then
    echo >&2 "${1:-.env} does not exists"
    return 1
  fi
  local i=0
  echo -n '{'
  cat ${1:-.env} | while read line; do
    if [[ -z "$line" ]]; then continue; fi
    if [[ $line == "#"* ]]; then continue; fi
    if [[ ! $i -eq 0 ]]; then echo -n ','; fi
    local key="${line%%=*}"
    key="${key%"${key##*[![:space:]]}"}"
    local val="${line#*=}"
    val="${val#"${val%%[![:space:]]*}"}"
    val=$(sed 's/^"\(.*\)"$/\1/' <<<${val})
    val=$(sed "s/^'\\(.*\\)'$/\\1/" <<<${val})
    val="${val//\"/\\\"}"
    echo -n '"'${key}'":"'${val}'"'
    ((i++))
  done
  echo '}'
}

minijson() {
  python3 -c "import json,sys;print(json.dumps(json.load(sys.stdin), separators=(',', ':')))"
}
