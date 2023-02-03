if ! command -v go &>/dev/null; then
  export PATH="$PATH:/usr/local/go/bin"
fi

if command -v go &>/dev/null; then
  export PATH="$(go env GOPATH)/bin:$PATH"

  gocompletepath=`type -p gocomplete`
  if [[ -x "$gocompletepath" ]]; then
    complete -C "$gocompletepath" go
  fi
  unset $gocompletepath
fi

gotest() {
  local pkg=$1
  if [[ -z "${pkg}" ]]; then
    return 1
  fi
  shift
  mkdir -p tmp
  echo $PWD/tmp/out.html
  go test $pkg -coverprofile=tmp/c.out $* && go tool cover -html=tmp/c.out -o tmp/out.html
}
