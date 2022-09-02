function! json#Pretty()
  %!json_pp
endfunction

function! json#Unescape()
  %substitute/\\"/"/g
  %substitute/\\\\/\\/g
  call json#Pretty()
endfunction
