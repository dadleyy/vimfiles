" line numbers, duh
set nu

" be improved
set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

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

filetype indent plugin on
autocmd CompleteDone * pclose
set noerrorbells visualbell t_vb=
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

Plugin 'anderson.vim'
Plugin 'birds-of-paradise.vim'
Plugin 'colorsbox'
Plugin 'ctrlp.vim'
Plugin 'jade.vim'
Plugin 'mustache.vim'
Plugin 'pathogen'
Plugin 'Revolution.vim'
Plugin 'sourcerer.vim'
Plugin 'vim-cjsx'
Plugin 'vim-coffee-script'
Plugin 'vim-colorschemes'
Plugin 'vim-javascript'
Plugin 'vim-jsx'
Plugin 'vim-markdown'
Plugin 'Alduin'
Plugin 'colorstepper'

" fix backspace
set backspace=indent,eol,start

