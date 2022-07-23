" remove type from reserver keywords list
syntax clear typescriptReserved
syntax keyword typescriptReserved final implements goto get private extends long synchronized from import volatile class constructor public declare transient float super protected static interface interface namespace export as set abstract module keyof native double short char enum throws byte debugger int package
hi def link typescriptReserved Keyword

" add type as a keywords if it is not a property
syntax match typescriptTypeKeyword '\(^\|[^\.]\)\zs\<type\>\ze[^:]'
hi def link typescriptTypeKeyword Keyword
