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

configfolder_vim() {
    configfolder_install $CONFIGFOLDER/vim/vimrc $HOME/.vimrc
}

configfolder_bash() {
    configfolder_install $CONFIGFOLDER/bash/bashrc $HOME/.bashrc
}

configfolder_zsh() {
    configfolder_install $CONFIGFOLDER/zsh/zshrc $HOME/.zshrc
    configfolder_install $CONFIGFOLDER/zsh/aliases.sh $ZSH_CUSTOM/aliases
}

configfolder_tmux() {
    configfolder_install $CONFIGFOLDER/tmux/tmux.conf $HOME/.tmux.conf
}

if [ $0 == "$BASH_SOURCE" ]; then
    configfolder_vim
    configfolder_bash
    configfolder_zsh
    configfolder_tmux
fi
