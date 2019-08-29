. `dirname ${BASH_SOURCE}`/../bash/lib/configfolder.sh

configfolder_git() {
  configfolder_install git/gitignore ~/.gitignore
  git config --global core.excludesfile ~/.gitignore
  git config --global core.editor vim

  git config --global user.name 'Carlos Gajardo'
  echo -n 'Insert your email: '
  read email
  if [ -n "$email" ]; then
    git config --global user.email $email
  fi

  git config --global alias.ap 'add --patch'
  git config --global alias.co 'checkout'
  git config --global alias.cob 'checkout -b'
  git config --global alias.cof 'checkout --'
  git config --global alias.ds 'diff --staged'
  git config --global alias.lc '!git log --oneline | head -n1'
  git config --global alias.logx 'log --graph --oneline'
  git config --global alias.rh 'reset HEAD'
  git config --global alias.st 'status'
}

if [ $0 == "$BASH_SOURCE" ]; then
  configfolder_ask "Install git?" && configfolder_git
fi
