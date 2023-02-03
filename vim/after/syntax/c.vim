syn match cType /\<[a-z_][0-9a-z_]*_t\>/

syn match cTypeName /\<\h\w*\>/ contained
syn cluster cMultiGroup add=cTypeName
syn cluster cParenGroup add=cTypeName
syn cluster cPreProcGroup add=cTypeName
hi def link cTypeName cType

syn clear cStructure
syn keyword cStructure struct union enum nextgroup=cTypeName skipwhite

syn match cValue /\<\(\l\+_\)\?\(\u\a*\|\u[A-Z_]*\)\>/
hi def link cValue cConstant

syn match cFunctionDef /\<\h\w*\>\ze\s\+(/
hi def link cIdentifier Identifier
hi def link cFunctionDef cIdentifier

"syn match cFunctionCall /\h\w*(/me=e-1
"hi def link cFunction Function
"hi def link cFunctionCall cFunction

"syn match cOperator "[.!~*&%<>^|=,+-]"
"syn match cOperator "/[^/*=]"me=e-1
"syn match cOperator "/$"
"hi def link cOperator Operator

"syn match cDelimiter "[][)(]"
"hi def link cDelimiter Delimiter

syn match cThis /\<this\>/
hi def link cThis Statement
