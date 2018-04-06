call plug#begin('~/.local/share/nvim/plugged')
Plug 'kergoth/vim-hilinks'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug'
call plug#end()

colorscheme patagonia

set number relativenumber
set noexpandtab softtabstop=4 tabstop=8 shiftwidth=4
set splitright splitbelow
set listchars=tab:·\ ,trail:~ " •·¬→↲
set list
set hlsearch
autocmd VimEnter * :NoMatchParen

let g:ctrlp_working_path_mode = ''
let g:ctrlp_user_command = 'git ls-files -oc --exclude-standard'

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
