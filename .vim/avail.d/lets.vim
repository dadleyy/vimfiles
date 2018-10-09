" macvim
let macvim_skip_colorscheme=1
let mapleader=" "

" esearch
let g:esearch = { 'adapter': 'git', 'out': 'qflist', 'backend': 'vim8' }

let g:ycm_rust_src_path="~/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"
let g:rustfmt_autosave=1

" prettier
let g:ale_fixers={'javascript': ['eslint']}
let g:ale_fix_on_save=1
let g:ale_linters_explicit=1

" airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
let g:airline_mode_map={
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '' : 'S',
    \ }

let g:airline_section_x = ''
let g:airline_section_y = '%{go#statusline#Show()}'

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1
let g:go_highlight_trailing_whitespace_error = 0

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
let g:ctrlp_user_command={
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }
