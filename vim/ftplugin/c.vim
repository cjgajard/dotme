setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab
setlocal wildignore+=*.o
nnoremap <buffer> <F5> :execute "echo system('make run')"<CR>
