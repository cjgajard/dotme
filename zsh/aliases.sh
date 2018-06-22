#: <<'NAVIGATION'
alias cdp="cd ~/Projects"
# alias cdg="cd ~/.go"
if [[ $ORIGIN ]]; then
  alias cdo="cd $HOME/$ORIGIN"

  if [[ $ORIGIN_USER ]]; then
    alias cdou="cd $HOME/$ORIGIN/$ORIGIN_USER"
    alias cdgu="cd ~/go/src/$ORIGIN/$ORIGIN_USER"
  fi
fi

: <<'DJANGO'
alias pms="python manage.py runserver"
alias pms0="python manage.py runserver 0.0.0.0:8000"
alias pm="python manage.py"
alias pm2="python manage.py migrate"
alias pm3="python manage.py makemigrations"
alias grepd="grepr --django --es --em"

function pylib() {
  local library="${1:-django}"
  local filename=$(python -c "import $library; print($library.__file__)")
  [[ -n $filename ]] && dirname $filename
}
DJANGO

#: <<'GIT'
# git plugin override
alias gaa="tput setaf 1; echo \"Don't do that mate\"; tput sgr0"
unalias gapa
unalias gcb
unalias gcd
unalias gcm
unalias glp

function __git_dev_branch() {
  git branch -a --no-color | sed 's/^..//' | awk -F/  '{print $NF}' | grep -E '(dev|develop|development)$' | tail -n 1
}
function gcod() {
  BRANCH=$(__git_dev_branch)
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
alias gcoc="git checkout carlos"
alias gcof="git checkout -- "
alias gcom="git checkout master"
alias gdc="git diff --cached"
alias ginit="git init; touch README.md; touch .gitignore; git add --all; git commit -m 'Initial commit'"
alias glrb="git pull --rebase"
alias glp="git pull --rebase && git push"
alias gpanic="TODAY=`date +%Y%m%d`; git checkout -b panic/\$TODAY; git add --all; git commit -m \"[skip ci] panic\"; git push origin panic/\$TODAY"

: <<'RAILS'
alias r="rails"
alias rk="rake"
alias rkrr="rake db:drop db:create db:migrate db:seed"
alias rkin="rake db:create db:migrate db:seed"
alias rs0="rails server -b 0.0.0.0"
alias rps="ps -aux | grep rails"
alias rkrg="rake routes | grep "
RAILS

: <<'REACTNATIVE'
alias rn="react-native"
alias rnra="react-native run-android"
alias rnri="react-native run-ios"
REACTNATIVE

#: <<'JAVASCRIPT'
alias grepj="grepr --js"
alias findj="findm --js"

#: <<'MISC'
alias prettyjson='python -m json.tool'
alias tree="tree -a -I '.git|node_modules|.env|__pycache__'"
