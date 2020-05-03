if exists('ftplugin_loaded_html') | finish | endif
let g:ftplugin_loaded_html = 1

augroup hmtlSyntax
  au!
  au Syntax * syntax clear htmlTagN
augroup END
