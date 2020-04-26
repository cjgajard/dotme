"if exists("g:ftplugin_c_loaded")
"  finish
"endif
"let g:ftplugin_c_loaded = 1

setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab
setlocal wildignore+=*.o
setlocal cinoptions=:0

if exists("g:ale_enabled")
  let g:ale_c_gcc_options = '-std=c17 -Wall -Wextra -Wpedantic -DDEBUG'
endif

nnoremap <buffer> <F4> :execute "echo system('make DEBUG=1')"<CR>
