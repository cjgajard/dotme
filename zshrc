# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dual"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true
DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
export HISTCONTROL=erasedups
export EDITOR='vim'

plugins=(autojump debian git grepr history-substring-search pip)

source $ZSH/oh-my-zsh.sh

# keep history file between sessions
DIRSTACKSIZE=15
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.zsh_history

# ----------------------------------------------------------

export PATH="$PATH:$HOME/.local/bin"

[[ -f $ZSH_CUSTOM/aliases.sh ]] && . $ZSH_CUSTOM/aliases.sh

# vim
stty -ixon

function __nvm() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}

function __android() {
  export ANDROID_HOME="$HOME/Android/Sdk"
  export PATH="$PATH:$ANDROID_HOME/platform-tools"
}

function __venv() {
  local env=${1:-.env}
  [[ -f $env/bin/activate ]] && . $env/bin/activate
}

function __go() {
    export GOROOT=$HOME/.go/1.10/go
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOROOT/bin
}

# default
# __android
# __go
__venv
__nvm
