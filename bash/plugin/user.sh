srcenv() {
  set -o allexport
  . ${1:-.env}
  set +o allexport
}
alias prettyjson='python3 -m json.tool'
alias tree="tree -a -I '.git|node_modules|.env|__pycache__'"
alias echopath='echo $PATH | tr : "\n"'
