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
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'itchyny/lightline.vim'
  let g:lightline = { 'colorscheme': 'nightfly' }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
  let g:user_emmet_mode='a'
Plug 'mbbill/undotree'  
  let g:undotree_SetFocusWhenToggle = 1
  let g:undotree_SplitWidth = 35
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

set termguicolors
colo nightfly

autocmd BufEnter * :syntax sync fromstart

set spelllang=en_gb

set autoindent
set autoread
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
set tabstop=2 softtabstop=2
set ttyfast
set ttimeout ttimeoutlen=50
set undodir=~/.vim/undo
set undofile
set updatetime=300
set wildmenu
set wildmode=full

" Leader keymaps
nnoremap <Leader>e :Lexplore<CR>
nnoremap <Leader>u :UndotreeToggle<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>c :Commits<CR>
nnoremap <Leader>b :Buffers<CR>

" Tab completion menus for coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Netrw tweaks
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_sort_options = "i"
let g:netrw_list_hide = netrw_gitignore#Hide()

" COC Extensions
let g:coc_global_extensions = [
      \ 'coc-tsserver',
      \ 'coc-json',
      \ 'coc-styled-components',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ 'coc-emmet'
      \ ]
