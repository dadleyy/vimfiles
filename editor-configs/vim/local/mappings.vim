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
noremap <leader>cs :noh<cr>
noremap <leader>rl :Prettier<cr>

" splits
noremap <leader>q :split<CR>:Explore<CR>
noremap <leader>w :Vexplore<CR>
noremap <leader>e :Explore<CR>

" delete + paste w/o register
noremap <space>p "_dP
" delete w/o register
noremap <space>d "_dd

" change colors
nmap <leader>z <Plug>ColorstepPrev

" fuzzy file finding
noremap <leader>t :CtrlP<CR>
noremap <leader>tf :CtrlPClearAllCaches<CR>

" fugitive git bindings
noremap <leader>lp :Gblame<CR>
noremap <leader>le :Gedit<CR>
noremap <leader>la :Gwrite<CR>
noremap <leader>ll :Glog<CR>

noremap <leader>gt :GoCoverage<CR>
noremap <leader>gc :GoCoverageClear<CR>


" folds
noremap <leader>fe za

" bring next line up
noremap <leader>j Jc

" ctags related
noremap <leader>y :CtrlPTag<CR>

" train muscles
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
