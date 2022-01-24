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

" mappings
let mapleader=" "
noremap <leader>e :Explore<CR>
noremap <leader>w :vsplit<CR>
noremap <leader>q :split<CR>
noremap <leader>t :CtrlP<CR>
noremap <leader>tf :CtrlPClearAllCaches<CR>

colorscheme gruvbox
