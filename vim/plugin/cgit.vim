function! cgit#BlameCmd(h)
  let l:h = a:h
  let l:cmd='git blame '.expand('%').' -L'.line('.')
  if l:h != 0 | let l:cmd .= ',+'.a:h | endif
  let @"=l:cmd
  return l:cmd
endfunction

command! -count CGitBlameCmd echo cgit#BlameCmd(<count>)
command! -count CGitBlame exec '!'.cgit#BlameCmd(<count>)

nnoremap <silent> <Plug>(cgit_blame_cmd) :GitBlameCmd<CR>
nnoremap <silent> <Plug>(cgit_blame) :GitBlame<CR>
