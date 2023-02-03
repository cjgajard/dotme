. `dirname ${BASH_SOURCE}`/../bash/lib/me.sh

me_vimplug() {
  dst=$HOME/.vim/autoload/plug.vim
  mkdir -p `dirname $dst`
  wget -O "$dst" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

me_updateeditor() {
  if ! command -v update-alternatives &>/dev/null; then
    return 1
  fi
  sudo update-alternatives --config editor
  #echo '/usr/bin/editor' \
  #  $(update-alternatives --display editor | grep currently | cut -d' ' -f4-)
}

me_installvim() {
  me_install vim $HOME/.vim
  me_ask "Install vimplug?" && me_vimplug
  me_ask "Update editor?" && me_updateeditor
  me_ask "Install vim plugins?" && vim +PlugInstall +qall
}

if [ $0 == "$BASH_SOURCE" ]; then
  me_ask "Install vim?" && me_installvim
  exit 0
fi
