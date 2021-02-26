psfind() {
  if [ -z "$1" ]; then
    echo "Usage: ${FUNCNAME[0]} [grep-options] SEARCH_TEXT"
    return 1
  fi
  whoami | xargs ps -o pid,args -u | grep "$@" | grep -v grep
}

pskill() {
  psfind "$@" | awk '{print $1}' | xargs kill -9
}
