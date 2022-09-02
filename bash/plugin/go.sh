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

go_ctags() {
  find . -name '*.go' -exec ctags {} +
}
