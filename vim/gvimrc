set background=dark
colorscheme patagonia
set guifont=Consolas:h10
set guioptions=eg

"fullscreen
nnoremap <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

if exists('gvimfullscreen')
  augroup gvimfullscreen
    au!
    au GUIEnter * call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
  augroup END
endif
