function! cjson#Pretty()
  %!json_pp -json_opt indent,indent_length=4,space_after,canonical
endfunction

function! cjson#Unescape()
  %substitute/\\"/"/g
  %substitute/\\\\/\\/g
  call json#Pretty()
endfunction
