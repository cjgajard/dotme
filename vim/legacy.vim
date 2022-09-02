"plugins
"functionality
Plug 'FredKSchott/CoVim'
Plug 'cjgajard/toggleset.vim', { 'on': 'MapToggleSet' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'kergoth/vim-hilinks'
"syntax
Plug 'hashivim/vim-terraform'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'ollykel/v-vim'
"colors
Plug 'eemed/sitruuna.vim'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'cjgajard/patagonia-vim'
Plug 'crusoexia/vim-dracula'
"nerd
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
"local
Plug '~/cjgajard/judi/contrib/judi-vim'

"settings
set term=screen-256color

"cjgajard/toggleset-vim
MapToggleSet n number relativenumber
MapToggleSet l list
MapToggleSet p paste

"ctrlpvim/ctrlp.vim
let g:ctrlp_user_command = 'git ls-files -co --exclude-standard'

"dense-analysis/ale
let g:ale_fixers = { 'javascript': ['eslint'] }

"scrooloose/nerdtree
let NERDTreeIgnore = ['\.git$', '\.sw.$', '\.obj$', '\.exe$', '\.dll$']
nnoremap <C-n>t :NERDTreeToggle<CR>

"scrooloose/nerdtree
let NERDTreeIgnore = ['\.cache$', '\.git$', '\.keep$', '\.o$', '\.out$',
\ '\.sublime-', '\.swp$', '\~$', 'dist', 'node_modules']
nnoremap <C-n>t :NERDTreeToggle<CR>

"git
function! s:gitBlameCmd(a, b, ...)
  let l:cmd='git blame '.expand('%').' -L'.a:a.','.a:b
  "if l:h != 0 | let l:cmd .= ',+'.a:h | endif
  let @"=l:cmd
  return l:cmd
endfunction

command! -range GitBlameCmd echom s:gitBlameCmd(<line1>, <line2>)
command! -range GitBlame exec '!'.s:gitBlameCmd(<line1>, <line2>)
noremap <Leader>b :GitBlameCmd<CR>
