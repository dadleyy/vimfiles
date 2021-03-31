filetype off 
syntax off

let ycm_install_flags='./install.py'
if executable('yarn')
  let ycm_install_flags=ycm_install_flags . ' --ts-completer'
endif

if executable('cargo')
  let ycm_install_flags=ycm_install_flags . ' --rust-completer'
endif

if executable('go')
 let ycm_install_flags=ycm_install_flags . ' --go-completer'
endif

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
if executable('yarn')
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
endif

Plug 'ycm-core/YouCompleteMe', { 'do': ycm_install_flags }
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
Plug 'tikhomirov/vim-glsl'

" themes
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

filetype plugin indent on 
syntax on
