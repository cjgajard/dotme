. `dirname ${BASH_SOURCE}`/../bash/lib/configfolder.sh

configfolder_git() {
  git config --global user.name 'Carlos Gajardo'
  echo -n 'Insert your email: '; read email
  git config --global user.email $email
  git config --global alias.ap 'add --patch'
  git config --global alias.co 'checkout'
  git config --global alias.cob 'checkout -b'
  git config --global alias.cof 'checkout --'
  git config --global alias.ds 'diff --staged'
  git config --global alias.lc '!git log --oneline | head -n1'
  git config --global alias.logx 'log --graph --oneline'
  git config --global alias.st 'status'
  configfolder_install git/gitignore ~/.gitignore
  git config --global core.excludesfile ~/.gitignore
}

if [ $0 == "$BASH_SOURCE" ]; then
  configfolder_ask "Install git?" && configfolder_git
fi
