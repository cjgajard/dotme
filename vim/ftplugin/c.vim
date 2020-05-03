setlocal cinoptions=:0
setlocal formatoptions-=o
setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab
setlocal wildignore+=*.o

if exists('ftplugin_c_loaded') | finish | endif
let g:ftplugin_c_loaded = 1

if exists("g:ale_enabled")
  let g:ale_c_gcc_options = '-std=c17 -Wall -Wextra -Wpedantic -DDEBUG'
endif

"nnoremap <silent> <F5> :make<CR>

if has('win32')
  compiler msvc
  let &makeprg='nmake /nologo'
  set errorformat+=%-G%.%#
  setlocal wildignore+=*.dll,*.exe,*.ilk,*.obj,*.pdb
endif
