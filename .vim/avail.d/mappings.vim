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

" remove highlight
noremap <leader>cs :noh<CR>

" open netrw
noremap <leader>w :Vexplore<CR>
noremap <leader>q :Explore<CR>

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
noremap <Leader>y :CtrlPTag<CR>
noremap <Leader>u :TagbarToggle<CR>
noremap <Leader>tf :CtrlPClearAllCaches<CR>
