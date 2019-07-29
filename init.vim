call plug#begin('~\AppData\Local\nvim\plugged')

" JavaScript Support
Plug 'pangloss/vim-javascript'

" JSX Support
Plug 'mxw/vim-jsx', { 'for': ['jsx', 'javascript.jsx'] }

" React code snippets
Plug 'epilande/vim-react-snippets'

" Ultisnips
Plug 'SirVer/ultisnips'

" Surronder for character and simple stuff
Plug 'tpope/vim-surround'

" Commenter
Plug 'tpope/vim-commentary'

" NERDTree - File Tree Manager and Viewer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Linters
Plug 'w0rp/ale'

" CtrlP for file opening
Plug 'ctrlpvim/ctrlp.vim'

" Emmet - HTML Snippets
Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'jsx', 'javascript', 'typescript', 'ts', 'tsx', 'html', 'css'] }

" Color themes
Plug 'chriskempson/base16-vim'

" Center Text on Screen
Plug 'junegunn/goyo.vim'

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

" Utils
map <F8> :ALEFix<CR>
map <F7> :set fileformat=unix<CR>
map <F6> :w<CR>



" NETRW

" MAP <F5> to toggle linenumbers in NormalMode
"nmap <F5> gh

" Hide dot files on startup
"let g:regex='\(^\|\s\s)\zs\.\S\+'
"let g:netrw_list_hide=ghregex

" Toggle Banner
"nmap <F6> I

" Turn Off banner on startup
let g:netrw_banner = 0

" Change File List Style
"let g:netrw_liststyle=0 " Default (DirName/FileName)
"let g:netrw_liststyle=1 " Show time and size
"let g:netrw_liststyle=2 " Show listing in 2 columns
let g:netrw_liststyle = 3 " Show tree listing

" Opening
let g:netrw_winsize = 0 " Set default win size to be always equal
let g:netrw_preview = 1 " Open splits to the right



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
"autocmd StdinReadPre * let s:std_in=1 
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
nnoremap <C-B> :NERDTreeToggle<CR>



" CtrlP
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|git\'
let g:ctrlp_show_hidden = 1
let g:ctrlp_root_markers = ['pom.xml', 'yarn.lock']



" React-Snippets
let g:UltiSnipsExpandTrigger="<C-;>"



" Goyo
:map <F11> :Goyo<CR>
let g:goyo_width = '100'
let g:goyo_height = '85%'

