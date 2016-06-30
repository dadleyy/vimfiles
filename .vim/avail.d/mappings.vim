" open netrw
noremap <leader>w :Vexplore<CR>
noremap <leader>q :Explore<CR>
noremap <leader>Q <c-w><c-n>:Explore<CR>

" easy replace with register
vnoremap <space>p "_dP<CR>

" make split big
noremap <leader>bd :bd<CR>

" compilation
noremap <leader>ccm :!make<CR>
noremap <leader>m :!make<CR>

noremap <leader>rr :! ruby %<CR>

" tab switching
noremap <leader>net :set noexpandtab<CR>
noremap <leader>eet :set expandtab<CR>
noremap <silent>~ :cd ~/<CR>

noremap <leader>gcs :!git status<CR>
noremap <leader>gca :!git add --all<CR>
noremap <leader>gcr :!git reset .<CR>

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
