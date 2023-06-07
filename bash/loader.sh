#!/usr/bin/env bash

me_load() {
  local type=$1
  shift
  for i in "$@"; do
    local f="$(cd `dirname ${BASH_SOURCE}`; pwd -P)/$type/$i"
    if [[ -d "$f" ]]; then export PATH="$f:$PATH"; return 0; fi
    [[ -f "$f.sh" ]] && . "$f.sh"
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
for c in "$(cd `dirname $BASH_SOURCE`; pwd -P)/completions/"* ; do
  if [ -r "${c}" ]; then . "${c}"; fi
done
