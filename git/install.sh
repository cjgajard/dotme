. `dirname ${BASH_SOURCE}`/../bash/lib/configfolder.sh

configfolder_git() {
  configfolder_install git/gitignore ~/.gitignore
  git config --global core.excludesfile ~/.gitignore
  git config --global core.editor vim
  git config --global --add --bool push.autoSetupRemote true
  git config --global init.defaultBranch master
  git config --global user.name 'Carlos Gajardo'
  git config --global commit.status true
  git config --global commit.verbose true

  git config --global alias.ap  'add --patch'
  git config --global alias.b   'branch'
  git config --global alias.c   'commit'
  git config --global alias.co  'checkout'
  git config --global alias.ds  'diff --staged'
  git config --global alias.f   'fetch'
  git config --global alias.g   'grep --line-number'
  git config --global alias.h   'help'
  git config --global alias.last 'log --graph --oneline --abbrev=8 --max-count=1'
  git config --global alias.lo  'log --graph --oneline --abbrev=8'
  git config --global alias.lol 'log --graph --oneline --abbrev=8 --all'
  git config --global alias.m   'merge --no-ff'
  git config --global alias.mff 'merge --ff-only'
  git config --global alias.psf 'push --force-with-lease'
  git config --global alias.rba 'rebase --abort'
  git config --global alias.rbc 'rebase --continue'
  git config --global alias.rbi 'rebase --interactive'
  git config --global alias.rbs 'rebase --skip'
  git config --global alias.r   'reset'
  git config --global alias.rs  'restore'
  git config --global alias.rsp 'restore --patch'
  git config --global alias.rss 'restore --staged'
  git config --global alias.ss  'status --short'
  git config --global alias.st  'status'
  git config --global alias.today 'log --since=4am'
}

if [ $0 == "$BASH_SOURCE" ]; then
  configfolder_ask "Install git?" && configfolder_git
  exit 0
fi
