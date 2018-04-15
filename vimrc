call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'digitaltoad/vim-pug'
Plug 'crusoexia/vim-dracula'
call plug#end()

set t_Co=256
colorscheme dracula

set number relativenumber
set expandtab tabstop=4 shiftwidth=4
set splitright splitbelow
set listchars=tab:•·,trail:~
set list
set hlsearch
autocmd VimEnter * :NoMatchParen

let g:ctrlp_user_command = 'git ls-files -co --exclude-standard'

hi StatusLineNC ctermfg=231 ctermbg=232 cterm=NONE
hi StatusLine ctermfg=231 ctermbg=236 cterm=NONE
hi SpecialKey ctermfg=240 ctermbg=NONE cterm=NONE
