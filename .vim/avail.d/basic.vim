" be improved
set nocompatible 
filetype off 

" prep vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" load plugins
Plugin 'VundleVim/Vundle.vim'

" tools
Plugin 'ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/ReplaceWithRegister'

" languages
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'digitaltoad/vim-pug'

" themes
Plugin 'AlessandroYorba/Alduin'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tyrannicaltoucan/vim-deep-space'

" turn filetype back on
call vundle#end()

" line numbers
set nu

" color scheme
set background=dark
colorscheme deep-space

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

" bye scrollbars
set guioptions-=r
set guioptions-=L

" gui font
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline

" close suggestion when moving forward
autocmd CompleteDone * pclose

" turn off annoyances
set noerrorbells visualbell t_vb=

" use ruby syntax highlighting in jbuilder files
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" fix backspace
set backspace=indent,eol,start

filetype plugin indent on 

" github.com column width
set colorcolumn=120
highlight ColorColumn guibg=#141414
highlight ColorColumn ctermbg=Black

" show status line on all splits
set ls=2

" no auto complete preview windows
set completeopt-=preview
