call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'digitaltoad/vim-pug'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'crusoexia/vim-dracula'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
call plug#end()

set t_Co=256
colorscheme synthwave

set number relativenumber
set tabstop=8 softtabstop=4 shiftwidth=4 expandtab
set splitright splitbelow
set listchars=tab:•·,trail:~,space:·
set list
set hlsearch
autocmd VimEnter * :NoMatchParen

let g:ctrlp_user_command = 'git ls-files -co --exclude-standard'

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_echo_msg_format='(%linter%) %code%: %s'

"hi StatusLineNC ctermfg=231 ctermbg=232 cterm=NONE
"hi StatusLine ctermfg=231 ctermbg=236 cterm=NONE
"hi SpecialKey ctermfg=240 ctermbg=NONE cterm=NONE
