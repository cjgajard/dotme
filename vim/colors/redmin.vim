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
let g:colors_name="redmin"

hi Normal       ctermfg=white    ctermbg=none     cterm=none
hi ColorColumn  ctermfg=white    ctermbg=darkgray cterm=none
hi Search       ctermfg=white    ctermbg=none     cterm=reverse
hi Comment      ctermfg=darkgray ctermbg=none     cterm=none
hi StatusLine   ctermfg=none     ctermbg=none     cterm=reverse
hi StatusLineNC ctermfg=none     ctermbg=none     cterm=none

hi Visual       ctermfg=white    ctermbg=red     cterm=none
hi Error        ctermfg=white    ctermbg=darkred cterm=none
hi Statement    ctermfg=red      ctermbg=none    cterm=none
hi Type         ctermfg=gray     ctermbg=none    cterm=none
hi Constant     ctermfg=darkred  ctermbg=none    cterm=none

hi! link SpecialKey   Comment
hi! link Identifier   Constant
hi! link MatchParen   Constant
hi! link SpellBad     Error
hi! link SpellCap     Error
hi! link WarningMsg   Error
hi! link Todo         Special
hi! link StorageClass Statement
hi! link Special      Statement
hi! link Title        Statement
hi! link VertSplit    StatuslineNC
hi! link Label        Type
hi! link PreProc      Type

let &cpo = s:cpo_save
let &t_Co = s:t_Co_save
if exists('*linksave#restore')
    call linksave#restore()
endif
unlet s:cpo_save
unlet s:t_Co_save
