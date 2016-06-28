" be improved
set nocompatible 
filetype off 

" prep vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" load plugins
Plugin 'Vundle.vim'
Plugin 'ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'AlessandroYorba/Alduin'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-scripts/ReplaceWithRegister'

" turn filetype back on
call vundle#end()
filetype plugin indent on 

" line numbers
set nu

" color scheme
colorscheme alduin

" spaces all day
set expandtab
set shiftwidth=2
set tabstop=2

" highlighting
set nohlsearch
syntax enable

" utf-8
set encoding=utf-8

" hide mouse while typing
set mousehide

" show column and line
set ruler

" searching case sensitivity
set ignorecase
set smartcase

" indent helpah
set autoindent
set smartindent

" screw swap fils
set noswapfile

" remove stupic scrollbars
set guioptions-=r
set guioptions-=L

" close suggestion when moving forward
autocmd CompleteDone * pclose

" turn off annoyances
set noerrorbells visualbell t_vb=

" use ruby syntax highlighting in jbuilder files
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" fix backspace
set backspace=indent,eol,start
