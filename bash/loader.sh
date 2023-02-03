#!/usr/bin/env bash

me_load() {
  local type=$1
  shift
  for i in "$@"; do
    local f="$(cd `dirname ${BASH_SOURCE}`; pwd -P)/$type/$i.sh"
    if [[ "$DEBUG" -eq 1 ]]; then echo $f; fi
    . "$f"
  done
}

me_lib() {
  me_load lib "$@"
}

me_plugin() {
  me_load plugin "$@"
}

# load libraries
me_lib ${lib[@]}

# load plugins
me_plugin ${plugin[@]}

# load theme
if [ -n "$theme" ]; then
  . "$(cd `dirname ${BASH_SOURCE}`; pwd -P)/theme/$theme.sh"
fi

# load completions
. "$(cd `dirname ${BASH_SOURCE}`; pwd -P)/completion.sh"
