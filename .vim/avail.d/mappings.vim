" syntax help
nmap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" ctags
noremap <leader>[ <C-]>
noremap <leader>] :pop<CR>

" remove highlight
noremap <leader>cs :noh<CR>

" splits
noremap <leader>q :split<CR>:Explore<CR>
noremap <leader>w :Vexplore<CR>
noremap <leader>e :Explore<CR>

" delete + paste w/o register
noremap <space>p "_dP
" delete w/o register
noremap <space>d "_dd

" train muscles
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" change colors
nmap <leader>z <Plug>ColorstepPrev

" fuzzy file finding
noremap <Leader>t :CtrlP<CR>
noremap <Leader>tf :CtrlPClearAllCaches<CR>

" fugitive git bindings
noremap <Leader>lp :Gblame<CR>
noremap <Leader>le :GEdit<CR>
noremap <Leader>la :Gwrite<CR>

" folds
noremap <Leader>fe za

" bring next line up
noremap <Leader>j Jc

" ctags related
noremap <Leader>u :TagbarToggle<CR>
noremap <Leader>y :CtrlPTag<CR>
