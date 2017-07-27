" macvim
let macvim_skip_colorscheme=1

" airline
" let g:airline_theme='gruvbox'
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1

" netrw
let g:netrw_sort_by = 'name'
let g:netrw_localrmdir='rm -r'

" you complete me
let g:ycm_confirm_extra_conf=0
let g:ycm_open_loclist_on_ycm_diags=0

" gitgutter
let g:gitgutter_signs=0

" ctrlp
let g:ctrlp_open_new_file='h'
let g:ctrlp_custom_ignore='\v[\/](public|bower_components|node_modules|tmp|dist|\.(git|hg|svn))$'
let g:ctrlp_max_depth=100
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }
