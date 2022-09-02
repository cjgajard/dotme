setlocal shiftwidth=8 tabstop=8 sts=8 noexpandtab
"setlocal makeprg=go\ build
let b:ale_linters = ['gofmt', 'gopls', 'govet', 'staticcheck', 'golangci-lint']
let b:ale_fixers = ['gofmt']

let b:ale_go_golangci_lint_package = 1
let b:ale_go_golangci_lint_options = ''
