#!/usr/bin/env bash

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -f /usr/share/bash-completion/completions/git ]; then
  . /usr/share/bash-completion/completions/git
fi

if [ -f /usr/share/bash-completion/completions/tig ]; then
  . /usr/share/bash-completion/completions/tig
fi

_me_load() {
  local type="${1#me_}"
  local bash="$(cd `dirname ${BASH_SOURCE}`; pwd -P)"
  COMPREPLY+=($(cd $bash/$type &>/dev/null;
    compgen -G "$2*.sh" | xargs -r basename -s .sh))
}
complete -F _me_load me_plugin
complete -F _me_load me_lib
