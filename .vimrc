" Install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Leader
let mapleader = " "

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
  let g:lightline = { 'colorscheme': 'tender' }
Plug 'jacoborus/tender.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
  let g:user_emmet_mode = 'a'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

set termguicolors
colo tender

autocmd BufEnter * :syntax sync fromstart

set autoindent
set cursorline
set expandtab
set hidden
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set nobackup
set noshowcmd
set noshowmode
set noswapfile
set number
set redrawtime=10000
set relativenumber
set shiftwidth=2
set shortmess=I
set signcolumn=yes
set spelllang=en_gb
set tabstop=2 softtabstop=2
set title
set ttimeout ttimeoutlen=50
set ttyfast
set undodir=~/.vim/undo
set undofile
set updatetime=300

" Leader keymaps
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>c :Commits<CR>
nnoremap <Leader>b :Buffers<CR>

" Tab completion menus for coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" COC Extensions
let g:coc_global_extensions = [
      \ 'coc-tsserver',
      \ 'coc-json',
      \ 'coc-styled-components',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ 'coc-emmet'
      \ ]
