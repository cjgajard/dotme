setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab
setlocal wildignore+=*.o
setlocal cinoptions=:0

nnoremap <buffer> <F4> :execute "echo system('make DEBUG=1')"<CR>
nnoremap <buffer> <F5> :execute "echo system('make run DEBUG=1')"<CR>

hi! def link cThis Special
match cThis /\<this\>/
