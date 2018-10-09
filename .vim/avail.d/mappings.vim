" esearch things
call esearch#map('<leader>ff', 'esearch')
noremap <leader>cc :cclose<CR>

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

noremap <leader>8 *

" remove highlight
noremap <leader>cs :noh<cr>

" rust
noremap <leader>rr :RustRun<CR>

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

noremap <leader>gl :GoLint<CR>
noremap <leader>gv :GoVet<CR>
noremap <leader>gi :GoInfo<CR>
noremap <leader>gc :GoCoverageToggle<CR>
noremap <leader>ga :GoAlternate<CR>

" fugitive git bindings
noremap <leader>lp :Gblame<CR>
noremap <leader>le :GEdit<CR>
noremap <leader>la :Gwrite<CR>

" folds
noremap <leader>fe za

" bring next line up
noremap <leader>j Jc

" ctags related
noremap <leader>u :TagbarToggle<CR>
noremap <leader>y :CtrlPTag<CR>

" train muscles
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
