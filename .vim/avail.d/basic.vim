" be improved
set nocompatible 
filetype off 

" prep vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" load plugins
Plugin 'VundleVim/Vundle.vim'

" ui
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'ctrlp.vim'

" tools
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'AndrewRadev/splitjoin.vim'

" languages
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'rust-lang/rust.vim'
Plugin 'fatih/vim-go'
Plugin 'leafgarland/typescript-vim'

" themes
Plugin 'dadleyy/gruvbox'
Plugin 'vim-airline/vim-airline-themes'

" formatting

" turn filetype back on
call vundle#end()

" line numbers
set nu

" color scheme
colorscheme gruvbox
set background=dark

" spaces all day
set expandtab
set shiftwidth=2
set tabstop=2

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

" bye scrollbars
set guioptions-=r
set guioptions-=L

" gui font
set guifont=Inconsolata\ for\ Powerline:h14

" turn off annoyances
set noerrorbells visualbell t_vb=

" fix backspace
set backspace=indent,eol,start

filetype plugin indent on 

" github.com column width
set colorcolumn=120
highlight ColorColumn guibg=#141414
highlight ColorColumn ctermbg=Black

" show status line on all splits
set ls=2

" i like search highlight now
set hlsearch

" https://www.reddit.com/r/vim/comments/8ggdqn/undocumented_tips_make_your_vim_1020x_times_faster
set re=1

" no auto complete preview windows
set completeopt-=preview

set cursorcolumn!
set nocursorline!

set noballooneval
