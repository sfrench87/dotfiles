" Install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jacoborus/tender.vim'
Plug 'junegunn/gv.vim'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'romainl/vim-cool'
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tommcdo/vim-fubitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
call plug#end()

set termguicolors
color tender

autocmd BufEnter * :syntax sync fromstart

set spelllang=en_gb

set autoindent
set cursorline
set directory^=$HOME/.vim/tmp//
set expandtab
set hlsearch
set ignorecase
set laststatus=2
set lazyredraw
set mouse=a
set noshowcmd
set noshowmode
set number
set redrawtime=10000
set relativenumber
set shiftwidth=2
set shortmess=I
set signcolumn=yes
set undodir=~/.vim/undo
set undofile
set updatetime=300
set wildmenu

nnoremap ; :
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>e :Lexplore<CR>

" Tab completion menus for coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Netrw tweaks
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_sort_options = "i"
let g:netrw_list_hide= netrw_gitignore#Hide()

let g:ctrlp_user_command = 'fd --type f'
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-styled-components', 'coc-eslint', 'coc-prettier', 'coc-emmet']

" Airline
let g:airline_theme = 'tender'
let g:airline_section_c = '%t%m'
let g:airline#extensions#coc#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_buffers = 0
