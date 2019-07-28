call plug#begin('~\AppData\Local\nvim\plugged')

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx', { 'for': ['jsx', 'javascript.jsx'] }
Plug 'justinj/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'jsx', 'javascript', 'typescript', 'ts', 'tsx', 'html', 'css'] }

Plug 'chriskempson/base16-vim'

call plug#end()



" VIM
set number
set relativenumber

set wrap
set linebreak

set autoindent
set shiftwidth=2
set expandtab
set softtabstop=2

set backspace=2
set mouse=a

set encoding=utf-8
set fileformat=unix
filetype plugin on

set colorcolumn=80,120



" COLOR SCHEME
colorscheme base16-harmonic-dark



" --- MAPS ---

" Pasting
noremap <S-Insert> "+p
inoremap <S-Insert> <Esc>"+p

" Better Backspace
inoremap <BS> <C-h>

" Closer Del
inoremap <C-L> <Del>

" Insert Space After in Insert_Mode
inoremap <C-Space> <Space><Esc>i

" Insert Line in Normal_Mode
nnoremap <S-Enter> O<Esc>j
nnoremap <C-Enter> o<Esc>k



" Ale 
" files fixed with prettier and then eslint
let g:ale_fixers = { 
\  'javascript': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint'],
\  'css': ['prettier'],
\}
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1



" EMMET
autocmd FileType html,css,javascript,javascript.jsx,jsx,cshtml,ts,tsx,typescript EmmetInstall
let g:user_emmet_install_global=0
let g:user_emmet_leader_key = '<C-,>'
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx'
\  }
\}
let g:jsx_ext_required = 0



" NERDTree
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
nnoremap <C-B> :NERDTreeToggle<CR>



" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|git\'
let g:ctrlp_show_hidden = 1



" React-Snippets
let g:UltiSnipsExpandTrigger="<C-;>"

