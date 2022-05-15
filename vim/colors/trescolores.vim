if exists('*linksave#find')
    call linksave#find()
endif
let s:cpo_save = &cpo
set cpo&vim

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="trescolores"

hi Normal      ctermfg=White    ctermbg=none
hi Comment     ctermfg=7        ctermbg=none
hi Error       ctermfg=White    ctermbg=DarkRed
hi MatchParen  ctermfg=Green    ctermbg=none     cterm=bold
hi Search      ctermfg=none     ctermbg=none     cterm=reverse
hi Visual      ctermfg=White    ctermbg=DarkBlue cterm=none
hi ColorColumn ctermfg=8        ctermbg=none     cterm=reverse

"StatusLine and StatusLineNC cannot be transparent for 'fillchars' to work.
hi StatusLine   ctermfg=White ctermbg=none cterm=bold
hi StatusLineNC ctermfg=White ctermbg=none cterm=none

hi Constant  ctermfg=DarkMagenta    ctermbg=none
hi Type      ctermfg=DarkCyan   ctermbg=none
hi Statement ctermfg=DarkYellow  ctermbg=none

"" default blue of linux terminal is difficult to read over black
"if &t_Co < 16 | hi Constant  ctermfg=Magenta ctermbg=none | endif

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

hi! link htmlEndTag   Comment
hi! link htmlArg      htmlTag

hi! link diffRemoved  Comment
hi! link diffChanged  Statement
hi! link diffAdded    Type

let &cpo = s:cpo_save
if exists('*linksave#restore')
    call linksave#restore()
endif
unlet s:cpo_save
