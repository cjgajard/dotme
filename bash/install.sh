. `dirname ${BASH_SOURCE}`/../bash/lib/configfolder.sh

configfolder_bash() {
  configfolder_install bash/bashrc $HOME/.bashrc
  configfolder_install bash/bash_profile $HOME/.bash_profile
}

if [ $0 == "$BASH_SOURCE" ]; then
  configfolder_ask "Install bash?" && configfolder_bash
fi
