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
let g:colors_name="superchat"

hi Normal       ctermfg=White    ctermbg=none     cterm=none
hi Comment      ctermfg=DarkGray ctermbg=none     cterm=none
hi Error        ctermfg=White    ctermbg=DarkGray cterm=none
hi Search       ctermfg=White    ctermbg=Black    cterm=reverse
hi Visual       ctermfg=White    ctermbg=DarkBlue cterm=none
hi StatusLine   ctermfg=White    ctermbg=none     cterm=none
hi StatusLineNC ctermfg=Gray     ctermbg=none     cterm=none

hi Constant     ctermfg=45 ctermbg=none cterm=none
hi Statement    ctermfg=208  ctermbg=none cterm=none
hi Type         ctermfg=43  ctermbg=none cterm=none
hi Identifier   ctermfg=196 ctermbg=none cterm=none
hi Special      ctermfg=220  ctermbg=none cterm=none
hi String       ctermfg=161 ctermbg=none cterm=none
hi Macro        ctermfg=25 ctermbg=none cterm=none

hi! link SpecialKey   Comment
hi! link SignColumn   Comment
hi! link Folded       Comment
"hi! link Label        Constant
hi! link ColorColumn  Error
hi! link SpellBad     Error
hi! link SpellCap     Error
hi! link WarningMsg   Error
"hi! link PreProc      Identifier
hi! link MatchParen   Special
hi! link Todo         Special
"hi! link StorageClass Statement
"hi! link Title        Statement
hi! link TabLineSel   Statusline
hi! link VertSplit    StatuslineNC
hi! link TabLine      StatuslineNC
hi! link TabLineFill  StatuslineNC
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
