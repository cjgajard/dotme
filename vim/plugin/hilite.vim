function! hilite#atcursor()
  return synIDattr(synID(line('.'), col('.'), 1), 'name')
endfunction

function! hilite#hiatcursor()
  let l:name = hilite#atcursor()
  if !empty(l:name)
    exec 'hi '.l:name
  endif
endfunction

function! hilite#reload()
  exec 'colorscheme '.g:colors_name
endfunction

nnoremap <silent> <Plug>(hilite_reload) :call hilite#reload()<CR>
nnoremap <silent> <Plug>(hilite_cur_hi) :call hilite#hiatcursor()<CR>
nnoremap <silent> <Plug>(hilite_cur_echo) :echo hilite#atcursor()<CR>
