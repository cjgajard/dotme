call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'digitaltoad/vim-pug'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'crusoexia/vim-dracula'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'flazz/vim-colorschemes'
call plug#end()

set t_Co=256
colorscheme dracula

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
