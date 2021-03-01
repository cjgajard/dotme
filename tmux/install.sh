. `dirname ${BASH_SOURCE}`/../bash/lib/configfolder.sh

configfolder_tmux() {
  configfolder_install tmux/tmux.conf $HOME/.tmux.conf
}

if [ $0 == "$BASH_SOURCE" ]; then
  configfolder_ask "Install tmux?" && configfolder_tmux
  exit 0
fi
