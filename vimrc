call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
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

hi StatusLineNC ctermfg=231 ctermbg=232 cterm=NONE
hi StatusLine ctermfg=231 ctermbg=236 cterm=NONE
hi SpecialKey ctermfg=240 ctermbg=NONE cterm=NONE
