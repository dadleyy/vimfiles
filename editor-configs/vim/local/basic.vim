" be improved
set nocompatible 
filetype off 

" prep vim-plug
source ~/.vim/bundle/vim-plug/plug.vim
call plug#begin('~/.vim/bundle')

" self reference
Plug 'junegunn/vim-plug'

" ui
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'

" tools
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --ts-completer --rust-completer --go-completer' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'AndrewRadev/splitjoin.vim'

" languages
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'rust-lang/rust.vim'
Plug 'jparise/vim-graphql'
Plug 'cakebaker/scss-syntax.vim'
Plug 'lifepillar/pgsql.vim'

" themes
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" line numbers
set nu

" color scheme
silent! colorscheme gruvbox
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
set smarttab

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

set redrawtime=10000

set cmdheight=1
set mmp=5000
