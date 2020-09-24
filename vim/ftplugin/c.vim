setlocal cinoptions=:0,l1,t0,(s,U1,m1
setlocal noexpandtab shiftwidth=8 softtabstop& tabstop=8

if exists('ftplugin_c_loaded') | finish | endif
let g:ftplugin_c_loaded = 1

let g:ale_c_cc_options = '-std=c18 -Wall -Wextra -Wpedantic -DDEBUG'

if has('win32')
    compiler msvc
    let &makeprg='nmake /nologo'
    set errorformat+=%-G%.%#
    set wildignore+=*.dll,*.exe,*.ilk,*.obj,*.pdb
    let g:netrw_list_hide .= ',\.exe\*\?$,\.dll$,\.obj$,\.pdb$'
else
    set wildignore+=*.o,*.out
    let g:netrw_list_hide .= ',\.o$,\.out\*\?$'
    let g:ale_linters = get(g:, 'ale_linters', {})
    let g:ale_linters.c = ['cc']
endif
