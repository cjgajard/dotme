"plugins
Plug 'FredKSchott/CoVim'
Plug 'cjgajard/toggleset.vim', { 'on': 'MapToggleSet' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'kergoth/vim-hilinks'
Plug 'tpope/vim-surround'
Plug 'hashivim/vim-terraform'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
"
Plug 'eemed/sitruuna.vim'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'cjgajard/patagonia-vim'
Plug 'crusoexia/vim-dracula'

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'

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
