function! FzyDo(choice_cmd, vim_cmd)
  try
    let output = system(a:choice_cmd . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec ':' . (empty(a:vim_cmd) ? 'e' : a:vim_cmd) . ' '. output
  endif
endfunction

command! -nargs=* Fzy :call FzyDo("find . -type f", <q-args>)
command! -nargs=* Gzy :call FzyDo("git ls-files", <q-args>)

nnoremap <Leader>fe :Fzy e<CR>
nnoremap <Leader>fv :Fzy vsp<CR>
nnoremap <Leader>fs :Fzy sp<CR>
nnoremap <Leader>ft :Fzy tabe<CR>

nnoremap <Leader>ge :Gzy e<CR>
nnoremap <Leader>gv :Gzy vsp<CR>
nnoremap <Leader>gs :Gzy sp<CR>
nnoremap <Leader>gt :Gzy tabe<CR>
