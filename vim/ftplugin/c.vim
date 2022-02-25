setlocal cinoptions=:0,l1,t0,(s,u0,U1,m1
setlocal noexpandtab shiftwidth=8 softtabstop=8 tabstop=8

if exists('ftplugin_c_loaded') | finish | endif
let g:ftplugin_c_loaded = 1
nnoremap <Leader>ec :e %<.c<CR>
nnoremap <Leader>eC :e %<.h<CR>

nnoremap <F5> :call system("find . -name '*.c' -exec ctags {} +")<CR>

if filereadable('Makefile')
    let g:ale_c_parse_makefile = 1
    let g:ale_c_cc_options = '-DDEBUG'
else
    let g:ale_c_cc_options = '-std=c90 -Wall -Wextra -Wpedantic -DDEBUG'
endif

if has('win32')
    compiler msvc
    let &makeprg='nmake /nologo'
    set errorformat+=%-G%.%#
    set wildignore+=*.dll,*.exe,*.ilk,*.obj,*.pdb
    let g:netrw_list_hide .= ',\.exe\*\?$,\.dll$,\.obj$,\.pdb$'
    if exists('NERDTreeIgnore')
       let NERDTreeIgnore += ['\.exe$', '\.dll$', '\.obj$', '\.pdb$']
    endif
else
    set wildignore+=*.o,*.out
    let g:netrw_list_hide .= ',\.o$,\.out\*\?$'
    if exists('NERDTreeIgnore')
       let NERDTreeIgnore += ['\.o$', '\.out$']
    endif
endif
