#!/usr/bin/env bash

me_load() {
  local type=$1
  shift
  for i in "$@"; do
    local f="$ME_DIR/bash/$type/$i"
    if [[ -d "$f" ]]; then
      PATH="$PATH:$f"
    elif [[ -f "$f.sh" ]]; then
      . "$f.sh"
    fi
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
me_load theme ${theme[@]}
PS1="$PS1\$ "

# load completions
for c in "$ME_DIR/bash/completions/"* ; do
  if [ -r "${c}" ]; then . "${c}"; fi
done
