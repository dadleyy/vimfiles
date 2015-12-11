" open netrw
noremap <leader>w :Vexplore<CR>
noremap <leader>q :E<CR>

" resource vimrc (and all configs)
noremap <leader>sv :so $MYVIMRC<CR>


" make split big
noremap <leader>bb :res 100<CR>
noremap <leader>bw :vertical resize +800<CR>
vnoremap <leader>pp "_dP<CR>

" compilation
noremap <leader>ccm :!make<CR>
noremap <leader>m :!make<CR>

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
