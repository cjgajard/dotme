. `dirname ${BASH_SOURCE}`/../bash/lib/me.sh

me_installtmux() {
  me_install tmux/tmux.conf $HOME/.tmux.conf
}

if [ $0 == "$BASH_SOURCE" ]; then
  me_ask "Install tmux?" && me_installtmux
  exit 0
fi
