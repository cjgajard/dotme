set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'dracula/vim'
Plugin 'digitaltoad/vim-pug'
call vundle#end()            " required

set t_Co=256
colorscheme dracula

filetype plugin indent on    " required
syntax on

"function! SyntaxItem()
"    return synIDattr(synID(line("."),col("."),1),"name")
"endfunction

set statusline=%f\ %m
"set statusline+=%{SyntaxItem()}
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ctrlp_working_path_mode = 1
let g:ctrlp_user_command = 'git ls-files -oc --exclude-standard'
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'node_modules/.bin/eslint'

set number relativenumber
set expandtab tabstop=4 shiftwidth=4
set splitright splitbelow
set listchars=tab:•·,trail:~
set list
set hlsearch
autocmd VimEnter * :NoMatchParen

hi StatusLineNC ctermfg=231 ctermbg=232 cterm=NONE
hi StatusLine ctermfg=231 ctermbg=236 cterm=NONE
hi SpecialKey ctermfg=240 ctermbg=NONE cterm=NONE
