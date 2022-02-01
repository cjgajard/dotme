let g:ale_c_parse_makefile = 1
let g:ale_c_always_make = 1

nnoremap <Leader>ec :e %<.cpp<CR>
nnoremap <Leader>eC :e %<.hpp<CR>

nnoremap <F5> :call system("find . -name '*.cpp' -exec ctags {} +")<CR>
