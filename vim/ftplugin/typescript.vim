setl sw=4 ts=4 sts=4 et
"setl tw=100
let b:ale_fixers=['eslint']

nnoremap <F5> :call system("find src -regex '.*\.tsx?$' -exec ctags --map-typescript=+.tsx {} +")<CR>
