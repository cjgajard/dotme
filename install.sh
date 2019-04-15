if [ ! $CONFIGFOLDER ]; then
  export CONFIGFOLDER="$(cd `dirname ${BASH_SOURCE}`; pwd -P)"
fi

if [ ! $ZSH_CUSTOM ]; then
  export ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
fi

configfolder_install() {
  local usage="usage: configfolder_install SOURCE_FILE DESTINATION_FILE"
  [[ "$1" == "" || "$2" == "" ]] && echo $usage && return 1
  [[ ! -f $1 ]] && echo "file \`$1\` does not exist" && return 1
  [[ -f $2 ]] && rm $2
  ln -s $1 $2
}

configfolder_vimplug() {
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

configfolder_vim() {
  configfolder_vimplug
  configfolder_install $CONFIGFOLDER/vim/vimrc $HOME/.vimrc
  mkdir -p $HOME/.vim/after
  configfolder_install $CONFIGFOLDER/vim/ftplugin $HOME/.vim/after/ftplugin
  echo '/usr/bin/editor' $(update-alternatives --display editor |
    grep currently | cut -d' ' -f4-)
  vim +PlugInstall +qall
}

configfolder_bash() {
  configfolder_install $CONFIGFOLDER/bash/bashrc $HOME/.bashrc
  configfolder_install $CONFIGFOLDER/bash/profile $HOME/.profile
}

configfolder_zsh() {
  configfolder_install $CONFIGFOLDER/zsh/zshrc $HOME/.zshrc
  configfolder_install $CONFIGFOLDER/zsh/aliases.sh $ZSH_CUSTOM/aliases
}

configfolder_tmux() {
  configfolder_install $CONFIGFOLDER/tmux/tmux.conf $HOME/.tmux.conf
}

configfolder_ask() {
  read -p "$1 [y|N]" -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    return 1
  fi
  return 0
}

if [ $0 == "$BASH_SOURCE" ]; then
  configfolder_ask "Install vim?" && configfolder_vim
  configfolder_ask "Install bash?" && configfolder_bash
  configfolder_ask "Install zsh?" && configfolder_zsh
  configfolder_ask "Install tmux?" && configfolder_tmux
fi
