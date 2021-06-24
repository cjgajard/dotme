if exists('*linksave#find')
    call linksave#find()
endif
let s:cpo_save = &cpo
let s:t_Co_save = &t_Co
set cpo&vim
set t_Co=256

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="ox"

hi Normal       ctermfg=15   ctermbg=none cterm=none
hi Comment      ctermfg=8    ctermbg=none cterm=none
hi Error        ctermfg=15   ctermbg=8    cterm=none
hi Search       ctermfg=15   ctermbg=0    cterm=reverse
hi Visual       ctermfg=15   ctermbg=4    cterm=none
hi StatusLine   ctermfg=36 ctermbg=234 cterm=bold
hi StatusLineNC   ctermfg=36 ctermbg=234 cterm=none

hi TabLineSel ctermfg=231 ctermbg=none cterm=bold
hi TabLine    ctermfg=15  ctermbg=234  cterm=none

hi Constant    ctermfg=81  ctermbg=none cterm=none
hi Identifier  ctermfg=69  ctermbg=none cterm=none
hi Macro       ctermfg=207 ctermbg=none cterm=none
hi Statement   ctermfg=98  ctermbg=none cterm=none
hi String      ctermfg=42  ctermbg=none cterm=none

hi! link VertSplit   StatuslineNC
hi! link TabLineFill StatusLineNC

hi! link Operator     Normal
hi! link SpecialKey   Comment
hi! link SignColumn   Comment
hi! link Folded       Comment
hi! link Label        Constant
hi! link Special      Constant
hi! link PreProc      Constant
hi! link ColorColumn  Error
hi! link SpellBad     Error
hi! link SpellCap     Error
hi! link WarningMsg   Error
hi! link Function     Identifier
hi! link MatchParen   Macro
hi! link Todo         Special
hi! link StorageClass Statement
hi! link Title        Statement
hi! link Type         Statement
hi! link Boolean      String

hi! link htmlEndTag Comment
hi! link htmlArg    htmlTag

hi! link rustDeriveTrait rustDerive
hi! link rustModPath     Identifier
hi! link rustSelf        Statement

let &cpo = s:cpo_save
let &t_Co = s:t_Co_save
if exists('*linksave#restore')
    call linksave#restore()
endif
unlet s:cpo_save
unlet s:t_Co_save
