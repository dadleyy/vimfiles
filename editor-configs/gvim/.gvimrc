syntax on

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim', {'on': ['CtrlP', 'CtrlPClearAllCaches']}
call plug#end()

set nu

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

" mappings
let mapleader=" "
noremap <leader>e :Explore<CR>
noremap <leader>w :vsplit<CR>
noremap <leader>q :split<CR>
noremap <leader>t :CtrlP<CR>
noremap <leader>tf :CtrlPClearAllCaches<CR>

colorscheme gruvbox
