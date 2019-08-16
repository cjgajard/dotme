syn match cType '\<\h\w*_t\>'

syn match cValue '\<\(\u\a*\|\u[A-Z_]*\)\>'
hi def link cValue Constant

syn clear cStructure
syn keyword cStructure typedef
syn match cType "\(struct\|enum\|union\)\s\+\h\w*"

syn match cFunctionDef "\<_*\l\w*\>\ze\s("
hi def link cFunctionDef Function

syn match cThis /\<this\>/
hi def link cThis Special
