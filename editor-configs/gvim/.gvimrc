syntax on

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim', {'on': ['CtrlP', 'CtrlPClearAllCaches']}
Plug 'rust-lang/rust.vim'
call plug#end()

set nu

set ignorecase
set smartcase

set noerrorbells
set novisualbell
set belloff=all

set shiftwidth=2
set tabstop=2
set expandtab

set guifont=Consolas:h14
set go='d'

set noswapfile

filetype plugin indent on
set hlsearch

let g:ctrlp_open_new_file='h'
let g:ctrlp_custom_ignore='\v[\/](public|bower_components|node_modules|tmp|dist|\.(git|hg|svn))$'
let g:ctrlp_max_depth=100
let g:ctrlp_user_command={'types': {1: ['.git', 'cd %s && git ls-files']}}

let g:rustfmt_autosave=1

" mappings
let mapleader=" "
noremap <leader>q :split<CR>:Explore<CR>
noremap <leader>w :Vexplore<CR>
noremap <leader>e :Explore<CR>

noremap <leader>cs :noh<cr>

noremap <leader>t :CtrlP<CR>
noremap <leader>tf :CtrlPClearAllCaches<CR>

colorscheme gruvbox
