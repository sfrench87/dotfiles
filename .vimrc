call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tommcdo/vim-fubitive'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set termguicolors
color onedark

autocmd BufEnter * :syntax sync fromstart

set mouse=a
set directory^=$HOME/.vim/tmp//
set noshowmode
set noshowcmd
set number
set laststatus=2
set relativenumber
set redrawtime=10000
set lazyredraw
set ignorecase
set wildmenu
set signcolumn=yes
set updatetime=300

set autoindent
set expandtab
set shiftwidth=2

nnoremap ; :
map <Leader>b :Buffers<CR>
map <Leader>f :Files<CR>
map <Leader>e :Lexplore<CR>

let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-styled-components', 'coc-eslint', 'coc-prettier', 'coc-emmet']
let g:lightline = { 'colorscheme': 'onedark' }
