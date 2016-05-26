" be improved
set nocompatible 
filetype off 

" prep vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" load plugins
Plugin 'ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'juanedi/predawn.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-pug'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'AlessandroYorba/Alduin'

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

" close suggestion when moving forward
autocmd CompleteDone * pclose

" turn off annoyances
set noerrorbells visualbell t_vb=

" use ruby syntax highlighting in jbuilder files
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" fix backspace
set backspace=indent,eol,start
