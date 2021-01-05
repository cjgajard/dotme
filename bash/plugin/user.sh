fnkill () {
  if [ -z "$1" ]; then
    echo "Usage: ${FUNCNAME[0]} [grep-options] SEARCH_TEXT"
    return 1
  fi
  whoami | xargs ps -o pid,cmd,args -u | grep "$@" | grep -v grep \
    | awk '{print $1}' | xargs kill -9
}
alias prettyjson='python3 -m json.tool'
alias tree="tree -a -I '.git|node_modules|.env|__pycache__'"
