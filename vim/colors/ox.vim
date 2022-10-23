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

"TODO remove comment
if get(g:, 'ox_use_xterm256', 0)
  let s:x0 = 16
  let s:x1 = 231
  let s:x2 = 244
  let s:x3 = 36
  let s:x4 = 234
  let s:x5 = 81
  let s:x6 = 69
  let s:x7 = 207
  let s:x8 = 98
  let s:x9 = 42
  let s:xa = 19
else
  let s:x0 = 0
  let s:x1 = 15
  let s:x2 = 7
  let s:x3 = 6
  let s:x4 = 8
  let s:x5 = 14
  let s:x6 = 5
  let s:x7 = 13
  let s:x8 = 12
  let s:x9 = 10
  let s:xa = 4
endif

exe 'hi Normal       ctermfg='.s:x1.' ctermbg=none     cterm=none'
exe 'hi Comment      ctermfg='.s:x2.' ctermbg=none     cterm=none'
exe 'hi Error        ctermfg='.s:x1.' ctermbg='.s:x2.' cterm=none'
exe 'hi Search       ctermfg='.s:x1.' ctermbg='.s:x0.' cterm=reverse'
exe 'hi Visual       ctermfg='.s:x1.' ctermbg='.s:xa.' cterm=none'
exe 'hi StatusLine   ctermfg='.s:x3.' ctermbg='.s:x4.' cterm=bold'
exe 'hi StatusLineNC ctermfg='.s:x3.' ctermbg='.s:x4.' cterm=none'

exe 'hi TabLineSel   ctermfg='.s:x1.' ctermbg=none     cterm=bold'
exe 'hi TabLine      ctermfg='.s:x1.' ctermbg='.s:x4.' cterm=none'

exe 'hi Constant     ctermfg='.s:x5.' ctermbg=none     cterm=none'
exe 'hi Identifier   ctermfg='.s:x6.' ctermbg=none     cterm=none'
exe 'hi Macro        ctermfg='.s:x7.' ctermbg=none     cterm=none'
exe 'hi Statement    ctermfg='.s:x8.' ctermbg=none     cterm=none'
exe 'hi String       ctermfg='.s:x9.' ctermbg=none     cterm=none'

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
