if exists('*linksave#find')
    call linksave#find()
endif
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

hi Normal       ctermfg=15 ctermbg=none cterm=none
hi Comment      ctermfg=8  ctermbg=none cterm=none
hi Error        ctermfg=15 ctermbg=8    cterm=none
hi Search       ctermfg=15 ctermbg=0    cterm=reverse
hi Visual       ctermfg=15 ctermbg=4    cterm=none
hi StatusLine   ctermfg=15 ctermbg=none cterm=none
hi StatusLineNC ctermfg=8  ctermbg=none cterm=none

hi Constant     ctermfg=12 ctermbg=none cterm=none
hi Statement    ctermfg=14 ctermbg=none cterm=none
hi Type         ctermfg=11 ctermbg=none cterm=none

hi! link SpecialKey   Comment
hi! link SignColumn   Comment
hi! link Folded       Comment
hi! link Identifier   Constant
hi! link Delimiter    Normal
hi! link Label        Constant
hi! link ColorColumn  Error
hi! link SpellBad     Error
hi! link SpellCap     Error
hi! link WarningMsg   Error
hi! link PreProc      Identifier
hi! link StorageClass Statement
hi! link Title        Statement
hi! link MatchParen   Statement
hi! link Special      Type
hi! link String       Type
hi! link Todo         Special
hi! link TabLine      StatusLineNC
hi! link TabLineFill  StatusLineNC
hi! link TabLineSel   StatusLine
hi! link VertSplit    StatuslineNC

hi! link htmlEndTag Comment
hi! link htmlArg htmlTag

let &cpo = s:cpo_save
let &t_Co = s:t_Co_save
if exists('*linksave#restore')
    call linksave#restore()
endif
unlet s:cpo_save
unlet s:t_Co_save
