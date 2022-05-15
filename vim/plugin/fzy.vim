function! Fzy()
  call system('git rev-parse')
  let l:find_cmd = v:shell_error == 0 ? 'git ls-files' : 'find . -type f'
  try
    let output = system(l:find_cmd . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec ':e '. output
  endif
endfunction

command! Find :call Fzy()
