" single color <div> with different color </div>
syntax clear tsxCloseTag " recreate without containing tsxTagName
syntax match tsxCloseTag contained +</\_s*[^/!?<>"']\+>+
syntax match tsxCloseTag contained +</>+
hi! def link tsxCloseTag Comment

hi def link htmlTag Constant
hi def link htmlTagName htmlTag
hi def link tsxTagName htmlTagName
