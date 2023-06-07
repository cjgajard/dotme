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
  echo -n $PWD/tmp/out.html | xclip -sel c
  if command -v coverdiff > /dev/null; then
    covercmd="coverdiff tmp/c.out > tmp/out.diff"
  else
    covercmd="go tool cover -html=tmp/c.out -o tmp/out.html"
  fi
  cmd="test $pkg -coverprofile=tmp/c.out $@"
  if command -v entr >/dev/null; then
    find . -name '*_test.go' | entr -c bash -c "go $cmd && $covercmd"
  else
    go $cmd
  fi
}
