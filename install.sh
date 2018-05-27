if [ ! $CONFIGFOLDER ]; then
    export CONFIGFOLDER=$(readlink -f .)
fi

if [ ! $ZSH_CUSTOM ]; then
    export ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
fi

clean() {
    rm $HOME/.vimrc
    rm $HOME/.zshrc
    rm $HOME/.tmux.conf
    rm $ZSH_CUSTOM/aliases.sh
    true
}

install_vim() {
    ln -s $CONFIGFOLDER/vim/vimrc $HOME/.vimrc
}

install_zsh() {
    ln -s $CONFIGFOLDER/zsh/zshrc $HOME/.zshrc
    ln -s $CONFIGFOLDER/zsh/aliases.sh $ZSH_CUSTOM/aliases.sh
}

install_tmux() {
    ln -s $CONFIGFOLDER/tmux/tmux.conf $HOME/.tmux.conf
}

clean
install_vim
install_zsh
install_tmux
