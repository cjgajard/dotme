#!/usr/bin/env bash
alias echopath='echo $PATH | tr : "\n"'
alias tree="tree -a -I '.git|node_modules|.env|__pycache__'"
alias ex='ex -u NONE -C'
#alias vi='vi -u NONE -C'

alias se='screen ${EDITOR:-vi}'
