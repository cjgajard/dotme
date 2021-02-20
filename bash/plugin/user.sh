psfind () {
  if [ -z "$1" ]; then
    echo "Usage: ${FUNCNAME[0]} [grep-options] SEARCH_TEXT"
    return 1
  fi
  whoami | xargs ps -o pid,args -u | grep "$@" | grep -v grep
}
pskill () {
  psfind | awk '{print $1}' | xargs kill -9
}
srcenv() {
  set -o allexport
  . ${1:-.env}
  set +o allexport
}
alias prettyjson='python3 -m json.tool'
alias tree="tree -a -I '.git|node_modules|.env|__pycache__'"
alias echopath='echo $PATH | tr : "\n"'
