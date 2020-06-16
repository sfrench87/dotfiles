" Install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'jacoborus/tender.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'romainl/vim-cool'
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tommcdo/vim-fubitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
call plug#end()

set termguicolors
colo tender 

autocmd BufEnter * :syntax sync fromstart

set spelllang=en_gb

set autoindent
set cursorline
set directory^=$HOME/.vim/tmp//
set expandtab
set hlsearch
set ignorecase
set incsearch 
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
set undodir=~/.vim/undo
set undofile
set updatetime=300
set wildmenu
set wildmode=full

nnoremap ; :
nnoremap <c-p> :FZF<CR>
nnoremap <c-o> :Lexplore<CR>

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

let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-styled-components', 'coc-eslint', 'coc-prettier', 'coc-emmet']

" Lightline
let g:lightline = { 'colorscheme': 'tender' }
