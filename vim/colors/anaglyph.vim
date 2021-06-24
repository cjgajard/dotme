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
let g:colors_name="anaglyph"

hi Normal  ctermfg=White    ctermbg=none     cterm=none
hi Comment ctermfg=DarkGray ctermbg=none     cterm=none
hi Error   ctermfg=White    ctermbg=DarkGray cterm=none
hi Search  ctermfg=White    ctermbg=Black    cterm=reverse
hi Visual  ctermfg=White    ctermbg=DarkBlue cterm=none
hi! link SpecialKey   Comment
hi! link SignColumn   Comment
hi! link Folded       Comment

hi StatusLine   ctermfg=White    ctermbg=none     cterm=none
hi StatusLineNC ctermfg=DarkGray ctermbg=none     cterm=none
hi! link TabLineSel   Statusline
hi! link TabLine      StatuslineNC
hi! link TabLineFill  StatuslineNC
hi! link VertSplit    StatuslineNC

hi Constant  ctermfg=Cyan    ctermbg=none cterm=none
hi Statement ctermfg=DarkRed ctermbg=none cterm=none
hi Type      ctermfg=Gray    ctermbg=none cterm=none
hi! link Identifier   Constant
hi! link Label        Constant
hi! link Special      Constant
hi! link Todo         Constant
hi! link PreProc      Constant
hi! link ColorColumn  Error
hi! link SpellBad     Error
hi! link SpellCap     Error
hi! link WarningMsg   Error
hi! link StorageClass Statement
hi! link Title        Statement
hi! link MatchParen   Type
hi! link String       Type

hi! link htmlEndTag Comment
hi! link htmlArg htmlTag

let &cpo = s:cpo_save
let &t_Co = s:t_Co_save
if exists('*linksave#restore')
    call linksave#restore()
endif
unlet s:cpo_save
unlet s:t_Co_save
