if command -v go &>/dev/null; then
  export PATH="$(go env GOPATH)/bin:$PATH"
fi

go_ctags() {
  find . -name '*.go' -exec ctags {} +
}
