setlocal shiftwidth=8 tabstop=8 sts=8 noexpandtab
nnoremap <buffer> <F5> :execute "echo system('go build && ./"
    \ . expand('%:p:h:t') "&& go clean')"<CR>
