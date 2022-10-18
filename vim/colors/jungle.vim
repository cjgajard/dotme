if exists('*linksave#find')
    call linksave#find()
endif
let s:cpo_save = &cpo
let s:tco_save = &t_Co
set cpo&vim
set t_Co=16

hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="jungle"

set
hi Normal       ctermfg=White ctermbg=none
hi ColorColumn  ctermfg=4     ctermbg=none     cterm=reverse
hi Comment      ctermfg=8     ctermbg=none
hi Error        ctermfg=White ctermbg=DarkRed
hi MatchParen   ctermfg=Green ctermbg=none     cterm=bold
hi PmenuSel     ctermfg=0     ctermbg=Cyan     cterm=none
hi Search       ctermfg=none  ctermbg=none     cterm=reverse
hi StatusLine   ctermfg=White ctermbg=none     cterm=none
hi StatusLineNC ctermfg=White ctermbg=none     cterm=none
hi Visual       ctermfg=White ctermbg=DarkBlue cterm=none

hi Constant  ctermfg=DarkCyan ctermbg=none
hi Type      ctermfg=DarkRed    ctermbg=none
hi Statement ctermfg=DarkBlue  ctermbg=none
hi String    ctermfg=DarkGreen  ctermbg=none

hi! link Delimiter    Normal
hi! link LineNr       Comment
hi! link LineNrAbove  LineNr
hi! link LineNrBelow  LineNr
hi! link CursorLineNr Visual

hi! link TabLine      StatusLineNC
hi! link TabLineFill  StatusLineNC
hi! link TabLineSel   StatusLine
hi! link VertSplit    StatuslineNC

hi! link Folded       Comment
hi! link SignColumn   Comment
hi! link SpecialKey   Comment
hi! link Identifier   Constant
hi! link Label        Constant
hi! link SpellBad     Error
hi! link SpellCap     Error
hi! link WarningMsg   Error
hi! link PreProc      Identifier
hi! link StorageClass Statement
hi! link Title        Statement
hi! link Directory    Type
hi! link Special      Type
hi! link String       Type
hi! link Todo         Special

hi! link diffAdded    Type
hi! link diffChanged  Statement
hi! link diffRemoved  Comment

hi! link shQuote      shString

let &cpo = s:cpo_save
let &t_Co = s:tco_save
if exists('*linksave#restore')
    call linksave#restore()
endif
unlet s:cpo_save

