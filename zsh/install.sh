. `dirname ${BASH_SOURCE}`/../bash/lib/configfolder.sh

configfolder_zsh() {
  if [ ! $ZSH_CUSTOM ]; then
    export ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
  fi
  configfolder_install $CONFIGFOLDER/zsh/zshrc $HOME/.zshrc
  configfolder_install $CONFIGFOLDER/zsh/aliases.sh $ZSH_CUSTOM/aliases
}

if [ $0 == "$BASH_SOURCE" ]; then
  configfolder_ask "Install zsh?" && configfolder_zsh
fi
