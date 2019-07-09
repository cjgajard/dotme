. `dirname ${BASH_SOURCE}`/../bash/lib/configfolder.sh

configfolder_bash() {
  configfolder_install $CONFIGFOLDER/bash/bashrc $HOME/.bashrc
  configfolder_install $CONFIGFOLDER/bash/profile $HOME/.profile
}

if [ $0 == "$BASH_SOURCE" ]; then
  configfolder_ask "Install bash?" && configfolder_bash
fi
