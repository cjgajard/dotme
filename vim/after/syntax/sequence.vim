if exists("b:current_syntax") | finish | endif
let s:cpo_sav = &cpo
set cpo&vim

syn match sequenceColor /#\w\+/ contained nextgroup=sequenceIdentifier skipwhite
syn match sequenceSpecial /\(\\n\)/
syn keyword sequenceToggle on off contained

syn keyword sequenceKeyword participant actor boundary control database entity participantgroup nextgroup=sequenceColor,sequenceIdentifier skipwhite
syn keyword sequenceKeyword activate deactivate create destroy destroyafter destroysilent nextgroup=sequenceIdentifier skipwhite
syn keyword sequenceKeyword autoactivation nextgroup=sequenceToggle skipwhite
syn keyword sequenceKeyword title par alt opt else end

syn match sequenceColon /:/ contained
syn match sequenceIdentifier /\u[^-(<:]*/ contained nextgroup=sequenceColon
syn match sequenceEdgeEnd /\]/ contained nextgroup=sequenceColon

syn match sequenceArrowBack /\((\d\+)\)\?\(<\|x\)\{1,2}-\{1,2}/ nextgroup=sequenceIdentifier,sequenceEdgeEnd contained
syn match sequenceArrow /-\{1,2}\(>\|x\)\{1,2}\((\d\+)\)\?/ nextgroup=sequenceIdentifier,sequenceEdgeEnd contained

syn match sequenceIdentifierStart /^\u[^-(<:]*/ nextgroup=sequenceArrow,sequenceArrowBack
syn match sequenceEdgeStart /^\[/ nextgroup=sequenceArrow,sequenceArrowBack

syn match sequenceNotePlace /\(over\|left of\|right of\)/ contained
syn keyword sequenceNote note box abox rbox nextgroup=sequenceNotePlace skipwhite

hi default link sequenceOperator  Operator
hi default link sequenceColon     sequenceOperator
hi default link sequenceArrow     sequenceOperator
hi default link sequenceArrowBack sequenceArrow

hi default link sequenceIdentifier      Identifier
hi default link sequenceIdentifierStart sequenceIdentifier
hi default link sequenceEdgeStart       sequenceIdentifier
hi default link sequenceEdgeEnd         sequenceIdentifier

hi default link sequenceKeyword      Keyword
hi default link sequenceNote         sequenceKeyword
hi default link sequenceNotePlace    sequenceKeyword

hi default link sequenceConstant Constant
hi default link sequenceToggle   sequenceConstant

hi default link sequenceSpecial  Special
hi default link sequenceColor    sequenceSpecial

let b:current_syntax = "sequence"
let &cpo = s:cpo_sav
unlet! s:cpo_sav
