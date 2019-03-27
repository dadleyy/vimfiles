" macvim
let macvim_skip_colorscheme=1
let mapleader=" "

" vim-go
let g:go_info_mode='gocode'
let g:go_template_autocreate=0
let g:go_template_use_pkg=0

" you complete me
let g:ycm_confirm_extra_conf=0
let g:ycm_open_loclist_on_ycm_diags=0
let g:ycm_auto_trigger=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_show_diagnostics_ui=0

let b:ale_fixers={'javascript': ['eslint']}
let g:ale_completion_enabled=0
let g:ale_linters_explicit=1
let g:ale_set_loclist=0
let g:ale_set_quickfix=0

let g:rustfmt_autosave=1

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

let g:airline_section_x=''

" netrw
let g:netrw_sort_by='name'
let g:netrw_localrmdir='rm -r'
let g:netrw_nobeval=1
let g:netrw_keepdir=0

" gitgutter
let g:gitgutter_signs=0


let g:gutentags_ctags_executable='uctags'

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
