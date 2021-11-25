syn keyword httpMethod DELETE GET OPTIONS PATCH POST PUT TRACE
syn match httpHeader display "^\w\+:"
syn match httpProtocol display "HTTP/\d\+\.\d\+"
syn match httpVariable display "\(^\|[^\\]\)\zs\$\w\+\ze"
syn region httpVariable display start="[^\\]\zs\${\ze" end="}"
"syn match httpSeparator  '\(\s\|(\|)\|<\|>\|@\|,\|;\|:\|\\\|\"\|/\|\[\|\]\|?\|=\|{\|}\)'

if exists("http_ignorecase")
  syn keyword httpMethod delete get options patch post put trace
endif

hi def link httpMethod Keyword
hi def link httpProtocol Keyword
hi def link httpVariable Identifier
