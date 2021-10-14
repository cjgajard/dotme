setlocal shiftwidth=8 tabstop=8 sts=8 noexpandtab
"setlocal makeprg=go\ build
let b:ale_linters = ['gofmt', 'gopls', 'govet', 'staticcheck']
let b:ale_fixers = ['gofmt']
