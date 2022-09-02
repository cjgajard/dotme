syn keyword httpMethod               DELETE GET OPTIONS PATCH POST PUT TRACE
syn match   httpProtocol display     "HTTP/\d\+\.\d\+"
syn match   httpVariable display     "\(^\|[^\\]\)\zs\$\w\+\ze"
syn region  httpVariable display     start="[^\\]\zs\${\ze" end="}"
syn region  httpHead     transparent start="\%^" end="\n\n"
syn match   httpHeader   display
      \ contained containedin=httpHead "^\h[_\-A-Za-z0-9]*:"

if exists("potoman_ignorecase")
  syn keyword httpMethod               delete get options patch post put trace
  syn match   httpProtocol display     "http/\d\+\.\d\+"
endif

hi def link httpMethod   Statement
hi def link httpProtocol Statement
hi def link httpVariable Constant
hi def link httpHeader   Type
hi def link httpHead     SpecialKey
