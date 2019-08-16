setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab
setlocal wildignore+=*.o
setlocal cinoptions=:0

if exists("g:ale_c_gcc_options")
  let g:ale_c_gcc_options .= " -DDEBUG"
endif

nnoremap <buffer> <F4> :execute "echo system('make DEBUG=1')"<CR>
