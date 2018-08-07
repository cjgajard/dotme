alias gaa="tput setaf 1; echo \"Don't do that mate\"; tput sgr0"
unalias gapa
unalias gcb
unalias gcd
unalias gcm
unalias glp
unalias gcan!
unalias grhh

function git_dev_branch() {
  git branch -a --no-color | sed 's/^..//' | awk -F/  '{print $NF}' | grep -E '(dev|develop|development)$' | tail -n 1
}
function gcod() {
  BRANCH=$(__git_dev_branch 2>/dev/null)
  if [[ -n $BRANCH ]]; then
    git checkout $BRANCH
  else
    git checkout -b development
  fi
}
alias g2day="git log --since='4am'"
alias gaax="git add --all; git reset --"
alias gap="git add --patch"
alias gcm="git commit -m"
alias gcob="git checkout -b"
alias gcof="git checkout -- "
alias gcom="git checkout master"
alias gdc="git diff --cached"
alias ginit="git init; touch README.md; touch .gitignore; git add --all; git commit -m 'Initial commit'"
alias glrb="git pull --rebase"
alias glp="git pull --rebase && git push"
alias gpanic="TODAY=`date +%Y%m%d`; git checkout -b panic/\$TODAY; git add --all; git commit -m \"[skip ci] panic\"; git push origin panic/\$TODAY"
