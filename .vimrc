call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tommcdo/vim-fubitive'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
call plug#end()

set termguicolors
let g:onedark_terminal_italics = 1
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
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>e :Lexplore<CR>

let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_sort_options = "i"
let g:ctrlp_user_command = 'fd --type f'
let g:netrw_list_hide= netrw_gitignore#Hide()
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-styled-components', 'coc-eslint', 'coc-prettier', 'coc-emmet']
let g:lightline = { 'colorscheme': 'onedark' }
