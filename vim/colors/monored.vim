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
let g:colors_name="monored"
let g:f="monored fff asdl;fkjasdfkl; ajsl;dfj l;askdfj l;asdl;kf jaslk;dfsdal;sfjkas"

hi Normal       ctermfg=white    ctermbg=none    cterm=none
hi Comment      ctermfg=darkgray ctermbg=none    cterm=none
hi ColorColumn  ctermfg=darkgray ctermbg=black   cterm=reverse
hi Error        ctermfg=red      ctermbg=white   cterm=reverse
hi Search       ctermfg=white    ctermbg=none    cterm=reverse
hi StatusLine   ctermfg=none     ctermbg=none    cterm=reverse
hi StatusLineNC ctermfg=none     ctermbg=none    cterm=none
hi Visual       ctermfg=white    ctermbg=darkred cterm=none

hi Statement    ctermfg=red      ctermbg=none    cterm=none
hi Type         ctermfg=gray     ctermbg=none    cterm=none
hi Constant     ctermfg=darkred  ctermbg=none    cterm=none

hi! link Delimiter    Normal
hi! link LineNr       Comment
hi! link LineNrAbove  LineNr
hi! link LineNrBelow  LineNr
hi! link CursorLineNr Normal

hi! link SpecialKey   Comment
hi! link SignColumn   Comment
hi! link Folded       Comment
hi! link Identifier   Constant
hi! link SpellBad     Error
hi! link SpellCap     Error
hi! link WarningMsg   Error
hi! link Todo         Special
hi! link MatchParen   Statement
hi! link StorageClass Statement
hi! link Title        Statement
hi! link Special      Type
hi! link Label        Type
hi! link PreProc      Type

hi! link TabLine      StatusLineNC
hi! link TabLineFill  StatusLineNC
hi! link TabLineSel   StatusLine
hi! link VertSplit    StatuslineNC

let &cpo = s:cpo_save
let &t_Co = s:t_Co_save
if exists('*linksave#restore')
    call linksave#restore()
endif
unlet s:cpo_save
unlet s:t_Co_save
