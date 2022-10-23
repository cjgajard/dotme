if exists('*linksave#find')
    call linksave#find()
endif
let s:cpo_save = &cpo
set cpo&vim

hi clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='turboc'

let s:fg = 255
let s:bg = 18
let s:hi = 226
let s:lo = 37
let s:c1 = 46
let s:c2 = 214
let s:c3 = 250
let s:vi = 21
let s:er = 196

exec 'hi Normal       ctermfg='.s:fg.' ctermbg='.s:bg.' cterm=none'
exec 'hi ColorColumn  ctermfg='.s:fg.' ctermbg='.s:vi.' cterm=reverse'
exec 'hi Error        ctermfg='.s:fg.' ctermbg='.s:er.' cterm=none'
exec 'hi MatchParen   ctermfg='.s:fg.' ctermbg=none     cterm=bold'
exec 'hi Pmenu        ctermfg='.s:bg.' ctermbg='.s:lo.' cterm=none'
exec 'hi PmenuSel     ctermfg='.s:bg.' ctermbg='.s:hi.' cterm=none'
exec 'hi Search       ctermfg='.s:hi.' ctermbg='.s:vi.' cterm=reverse'
exec 'hi Visual       ctermfg='.s:fg.' ctermbg='.s:vi.' cterm=none'

exec 'hi Comment      ctermfg='.s:lo.' ctermbg=none     cterm=none'
exec 'hi Constant     ctermfg='.s:c3.' ctermbg=none     cterm=none'
exec 'hi Identifier   ctermfg='.s:c1.' ctermbg=none     cterm=none'
exec 'hi Special      ctermfg='.s:hi.' ctermbg=none     cterm=none'
exec 'hi Statement    ctermfg='.s:hi.' ctermbg=none     cterm=none'
exec 'hi String       ctermfg='.s:c2.' ctermbg=none     cterm=none'
exec 'hi Type         ctermfg='.s:fg.' ctermbg=none     cterm=bold'

exec 'hi CursorLineNr ctermfg='.s:bg.' ctermbg='.s:lo.' cterm=none'
exec 'hi LineNr       ctermfg='.s:fg.' ctermbg=none     cterm=none'
hi! link LineNrAbove  LineNr
hi! link LineNrBelow  LineNr
hi! link SignColumn   LineNr

exec 'hi StatusLine   ctermfg='.s:fg.' ctermbg='.s:bg.' cterm=bold'
exec 'hi StatusLineNC ctermfg='.s:fg.' ctermbg='.s:bg.' cterm=none'
exec 'hi TabLineFill  ctermfg='.s:bg.' ctermbg='.s:lo.' cterm=none'
hi! link TabLine      TabLineFill
hi! link TabLineSel   StatusLine
hi! link VertSplit    StatusLineNC

hi! link Title        Normal
hi! link Folded       Comment
hi! link SpecialKey   Comment
hi! link Label        Constant
hi! link SpellBad     Error
hi! link SpellCap     Error
hi! link WarningMsg   Error
hi! link PreProc      Identifier
hi! link Delimiter    Special
hi! link Operator     Special
hi! link Todo         Special
hi! link StorageClass Statement
hi! link Directory    Type

exec 'hi cInclude     ctermfg='.s:bg.' ctermbg='.s:lo.' cterm=none'
hi! link cIncluded    cInclude

hi! link diffAdded    Identifier
hi! link diffChanged  Type
hi! link diffRemoved  String

hi! link shQuote      shString

hi! link vimFunction  Function
hi! link vimGroup     Normal

let &cpo = s:cpo_save
if exists('*linksave#restore')
    call linksave#restore()
endif
unlet s:cpo_save
