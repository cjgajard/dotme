call plug#begin(has('win32') ? '~/vimfiles/download' : '~/.vim/download')
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
if executable('go') | Plug 'fatih/vim-go' | endif
call plug#end()

"preload
if has('win32') | set enc=utf-8 | endif

"options
set backspace=indent,start
set backupcopy=yes nobackup noundofile
set expandtab shiftwidth=2 softtabstop=2 tabstop=8
set colorcolumn=+1 textwidth=80
set cursorline cursorlineopt=number
set fillchars=stl:=,stlnc:-,vert:\|,fold:-
set hlsearch noincsearch
set list listchars=tab:·\ ,trail:~
if version >= 900 | set listchars+=leadmultispace:·\ \ \  | endif
set nonumber norelativenumber numberwidth=2
set showcmd
set splitbelow splitright
set laststatus=2 statusline=[%<%f:%l:%c%V]%m%r%q%w%=%a%y[%n]
set timeoutlen=500
set wildmenu wildmode=full
set wildignorecase wildignore=.git/,.*.sw[a-p],.keep

let c_syntax_for_h = 1

"remap-builtins
nnoremap Q <nop>
nnoremap gQ <nop>
nnoremap q: <nop>
nnoremap Ñ :
nnoremap <Space> <Leader>
nnoremap n nzz
"nnoremap ; :
"nnoremap : ;

nnoremap <Leader>q :let @/=''\|noh<CR>
nnoremap <Leader>m :silent make\|redraw!\|cc<CR>
nnoremap <Leader>p :set paste! paste?<CR>
vnoremap s :sort<CR>

"related-buffer
nnoremap <Leader>et :e %:r_test.%:e<CR>
nnoremap <Leader>eT :exec 'e '.substitute(expand('%:r'),'_test','','').'.'.expand('%:e')<CR>

"clipboard
let g:copyprg = 'DISPLAY=:0 xclip -i -sel c'
let g:pasteprg = 'DISPLAY=:0 xclip -o -sel c'
let g:pastepprg = 'DISPLAY=:0 xclip -o -sel primary'
nnoremap <Leader>xc :call system(g:copyprg, @")<CR>
nnoremap <Leader>xv "=substitute(system(g:pasteprg), '[\r\n]*$', '', '')<CR>p
inoremap <C-x>v <C-R>=system(g:pasteprg)<CR>
nnoremap <Leader>xx "=system(g:pastepprg)<CR>p
inoremap <C-x>x <C-R>=system(g:pastepprg)<CR>

"daynight
function! IsNight()
  let l:latitude='33.27S'
  let l:longitude='70.4W'
  call system('command -v sunwait')
  if v:shell_error == 0
    call system('sunwait poll civil '.l:longitude.' '.l:latitude)
    return v:shell_error == 3
  endif
  let l:hour = str2nr(system('date +%H'))
  return l:hour < 7 || l:hour > 19
endfunction

"autocommands
augroup vimrc_reload
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC
    \ | if has('gui_running') && !empty($MYGVIMRC) | so $MYGVIMRC | endif
  au BufWritePost */colors/*.vim so $MYVIMRC
augroup END

augroup fo_clean
  au!
  au FileType * set fo-=o
augroup END

"terminal
nnoremap <Leader>tj :terminal<CR>
nnoremap <Leader>tl :vertical terminal<CR>
nnoremap <Leader>th :vertical terminal<CR><C-w>H

"netrw
let g:netrw_list_hide = '^\.\.\?[\/]$,'.netrw_gitignore#Hide()
let g:netrw_hide = 1
let g:netrw_banner = 0
"let g:netrw_sort_sequence = '[\/]$,\.\(h\|c\)$,*'
let g:netrw_sort_sequence = '[\/]$,*'
nnoremap <Leader>ee :Explore .<CR>
nnoremap <Leader>ef :Explore %:h<CR>
nnoremap <Leader>er :Rexplore<CR>
nnoremap <Leader>ev :Vexplore .<CR>

"dense-analysis/ale
let g:ale_echo_msg_format = '(%linter%/%code%) %s'
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_ballons = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
nmap <Leader>ad <Plug>(ale_detail)
nmap <Leader>af <Plug>(ale_fix)
nmap <Leader>ag <Plug>(ale_go_to_definition)
nmap <Leader>aG <Plug>(ale_go_to_type_definition)
nmap <Leader>aj <Plug>(ale_next)
nmap <Leader>ak <Plug>(ale_previous)
nmap <Leader>al <Plug>(ale_lint)
nmap <Leader>an <Plug>(ale_next_wrap)
nmap <Leader>ap <Plug>(ale_previous_wrap)
nnoremap <Leader>ah :ALEHover<CR>
nnoremap <Leader>ai :ALEInfo<CR>
nnoremap <Leader>ar :ALEReset<CR>
nnoremap <Leader>at :ALEToggle<CR>

"fatih/vim-go
let g:go_addtags_transform = 'camelcase'
let g:go_echo_go_info = 0
let g:go_fmt_fail_silently = 1
let g:go_imports_autosave = 0
let g:go_template_autocreate = 0
call setenv("GOFLAGS", "-tags=integration")
set completeopt=menu
nnoremap <Leader>gi :GoImports<CR>
nnoremap <Leader>gt :GoAddTags<CR>

"extra
command! -bar Mkdir call mkdir(expand("%:h"), "p")
nnoremap <Leader>jp :JSONPp<Return>
nnoremap <Leader>ju :JSONUnescape<Return>

"environment
filetype off
set t_Co=16
set background=dark
colorscheme default
filetype plugin indent on
