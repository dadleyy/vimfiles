let s:root=fnamemodify(resolve(expand('<sfile>')), ':h')

if !isdirectory(expand("$HOME") . "/.vim/bundle/vim-plug")
  echo "vim-plug missing, try running the configure script included in github.com/dadleyy/vimfiles"
  finish
end

execute "set runtimepath+=" . s:root
runtime! local/lets.vim
runtime! local/plug.vim
runtime! local/basic.vim
runtime! local/mappings.vim
runtime! local/autocmd.vim
