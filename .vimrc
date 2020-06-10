call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tommcdo/vim-fubitive'
Plug 'justinmk/vim-sneak'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
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

noremap <ScrollWheelDown> j
noremap <ScrollWheelUp> k

set noshowmode
set backspace=indent,eol,start
set noshowcmd
set number
set laststatus=2
set relativenumber
set lazyredraw
set ignorecase
set signcolumn=yes
set updatetime=300

set autoindent
set expandtab
set shiftwidth=2

nnoremap ; :
map <Leader>b :Buffers<CR>
map <Leader>f :Files<CR>
map <Leader>t :NERDTreeToggle<CR>

let g:sneak#s_next = 1
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-styled-components', 'coc-eslint', 'coc-prettier', 'coc-emmet']
let g:lightline = { 'colorscheme': 'onedark' }