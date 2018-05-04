" syntax help
nmap <leader>sp :call <SID>SynStack()<cr>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" ctags
noremap <leader>[ <C-]>
noremap <leader>] :pop<cr>

noremap <leader>8 *

" remove highlight
noremap <leader>cs :noh<cr>

" rust
noremap <leader>rr :RustRun<cr>

" splits
noremap <leader>q :split<cr>:Explore<cr>
noremap <leader>w :Vexplore<cr>
noremap <leader>e :Explore<cr>

" delete + paste w/o register
noremap <space>p "_dP
" delete w/o register
noremap <space>d "_dd

" change colors
nmap <leader>z <Plug>ColorstepPrev

" fuzzy file finding
noremap <leader>t :CtrlP<cr>
noremap <leader>tf :CtrlPClearAllCaches<cr>

noremap <leader>gl :GoLint<cr>
noremap <leader>gv :GoVet<cr>
noremap <leader>gi :GoInfo<cr>
noremap <leader>gc :GoCoverageToggle<cr>
noremap <leader>ga :GoAlternate<cr>

" fugitive git bindings
noremap <leader>lp :Gblame<cr>
noremap <leader>le :GEdit<cr>
noremap <leader>la :Gwrite<cr>

" folds
noremap <leader>fe za

" bring next line up
noremap <leader>j Jc

" ctags related
noremap <leader>u :TagbarToggle<cr>
noremap <leader>y :CtrlPTag<cr>

" train muscles
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
