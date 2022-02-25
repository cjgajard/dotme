if [[ $HOME == $PWD ]]; then return; fi
alias kak='kak \-$(if command kak -l | grep -q `basename $PWD`; then echo c; else echo s; fi) `basename $PWD`'
