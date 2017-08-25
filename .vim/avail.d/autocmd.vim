" close suggestion when moving forward
au CompleteDone * pclose

" use ruby syntax highlighting in jbuilder files
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

au Filetype go :ia <buffer> eee if e :=; e != nil {<CR>}<up><right><right><right><right><right><right>
" au BufWrite *.go silent! execute "!gotags -R " . simplify(b:git_dir."/../.") . " > " . simplify(b:git_dir."/../tags")
" au BufWrite *.go :GoBuild
