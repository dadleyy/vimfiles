" plugin management
set nocompatible
filetype off

let s:bundle=fnamemodify(expand('<sfile>'), ':h') . '/bundle'
let s:vimplug=s:bundle . '/vim-plug/plug.vim'
execute "source " . s:vimplug

call plug#begin(s:bundle)
Plug 'junegunn/vim-plug'
Plug 'tpope/vim-fugitive'
Plug 'gruvbox-community/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'AndrewRadev/splitjoin.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'cakebaker/scss-syntax.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go'
Plug 'jparise/vim-graphql'
Plug 'leafgarland/typescript-vim'

Plug 'Valloric/YouCompleteMe'
call plug#end()

syntax enable
filetype plugin indent on 

" basic settings
set nu
set shiftwidth=2
set tabstop=2
set expandtab
set encoding=utf-8
set ruler
set mousehide
set noerrorbells visualbell t_vb=
set guioptions-=r
set guioptions-=L
set noswapfile
set ignorecase
set smartcase
set autoindent
set smartindent

" colors
colorscheme gruvbox
set background=dark
set colorcolumn=120
set ls=2
highlight ColorColumn guibg=#141414
highlight ColorColumn ctermbg=Black

" settings
let mapleader=" "

" netrw
let g:netrw_sort_by='name'
let g:netrw_localrmdir='rm -r'
let g:netrw_nobeval=1
let g:netrw_keepdir=0

" ctrlp
let g:ctrlp_open_new_file='h'
let g:ctrlp_custom_ignore='\v[\/](public|bower_components|node_modules|tmp|dist|\.(git|hg|svn))$'
let g:ctrlp_max_depth=100
let g:ctrlp_user_command={
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }

" airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
let g:airline_mode_map={
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '' : 'S',
    \ }

let g:airline_section_x=''
let g:airline_section_error=0

" mappings
noremap <leader>q :split<CR>:Explore<CR>
noremap <leader>w :Vexplore<CR>
noremap <leader>e :Explore<CR>
noremap <leader>cs :noh<cr>

" ctrl-p
noremap <leader>t :CtrlP<CR>
noremap <leader>tf :CtrlPClearAllCaches<CR>

" bring next line up
noremap <leader>j Jc

" train muscles
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
