let s:cpo_save = &cpo
let s:t_Co_save = &t_Co
set cpo&vim
set t_Co=16

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="trescolores"

hi Normal       ctermfg=15   ctermbg=none cterm=none
hi Comment      ctermfg=8    ctermbg=none cterm=none
hi ColorColumn  ctermfg=none ctermbg=8    cterm=none
hi SpecialKey   ctermfg=8    ctermbg=none cterm=none

hi Constant     ctermfg=12   ctermbg=none cterm=none
hi Statement    ctermfg=14   ctermbg=none cterm=none
hi Type         ctermfg=10   ctermbg=none cterm=none

hi StatusLineNC ctermfg=none ctermbg=none cterm=none
hi StatusLine   ctermfg=none ctermbg=none cterm=reverse
hi VertSplit    ctermfg=none ctermbg=none cterm=none

hi! link Identifier   Constant
hi! link Label        Constant
hi! link Special      Constant
hi! link PreProc      Identifier
hi! link Todo         Special
hi! link StorageClass Statement
hi! link String       Type

let &cpo = s:cpo_save
let &t_Co = s:t_Co_save
unlet s:cpo_save
unlet s:t_Co_save
