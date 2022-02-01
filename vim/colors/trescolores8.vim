if exists('*linksave#find')
    call linksave#find()
endif
let s:cpo_save = &cpo
let s:t_Co_save = &t_Co
set cpo&vim
set t_Co=8

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="trescolores8"

hi Normal       ctermfg=White     ctermbg=none
hi Comment      ctermfg=DarkGray  ctermbg=none
hi Error        ctermfg=White     ctermbg=DarkGray
hi MatchParen   ctermfg=DarkGreen ctermbg=none
hi Search       ctermfg=none      ctermbg=none     cterm=reverse
hi StatusLine   ctermfg=White     ctermbg=none
hi StatusLineNC ctermfg=DarkGray  ctermbg=none
hi Visual       ctermfg=White     ctermbg=DarkBlue cterm=none

hi Constant  ctermfg=Magenta ctermbg=none
hi Statement ctermfg=Yellow  ctermbg=none
hi Type      ctermfg=Cyan    ctermbg=none

hi! link Delimiter    Normal
hi! link LineNr       Comment
hi! link LineNrAbove  LineNr
hi! link LineNrBelow  LineNr
hi! link CursorLineNr Visual

hi! link SpecialKey   Comment
hi! link SignColumn   Comment
hi! link Folded       Comment
hi! link Identifier   Constant
hi! link Label        Constant
hi! link ColorColumn  Error
hi! link SpellBad     Error
hi! link SpellCap     Error
hi! link WarningMsg   Error
hi! link PreProc      Identifier
hi! link StorageClass Statement
hi! link Title        Statement
hi! link Special      Type
hi! link String       Type
hi! link Todo         Special
hi! link TabLine      StatusLineNC
hi! link TabLineFill  StatusLineNC
hi! link TabLineSel   StatusLine
hi! link VertSplit    StatuslineNC

hi! link htmlEndTag Comment
hi! link htmlArg htmlTag

hi! link diffRemoved Comment
hi! link diffChanged Statement
hi! link diffAdded   Type

let &cpo = s:cpo_save
let &t_Co = s:t_Co_save
if exists('*linksave#restore')
    call linksave#restore()
endif
unlet s:cpo_save
unlet s:t_Co_save
