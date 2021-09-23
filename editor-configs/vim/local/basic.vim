" colorscheme first
set termguicolors
silent! colorscheme dogrun

" be improved
set nocompatible 

" line numbers
set nu

" spaces all day
set expandtab
set shiftwidth=2
set tabstop=2

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
set guicursor="sm:hor15"
set noshowmatch

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
set cursorline

set noballooneval

set redrawtime=10000

set signcolumn=auto

set cmdheight=1
set mmp=5000
