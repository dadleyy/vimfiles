let s:local_dir=fnamemodify(expand('<sfile>', ':h'), ':h')

" macvim
let macvim_skip_colorscheme=1
let mapleader=" "

" vim-go
let g:go_info_mode='gocode'
let g:go_template_autocreate=0
let g:go_template_use_pkg=0
let g:go_fmt_fail_silently=0
let g:go_debug=['shell-commands']

" elm
let g:elm_setup_keybindings=0

" sql
let g:sql_type_default = 'pgsql'

" you complete me
let g:ycm_global_ycm_extra_conf=resolve(s:local_dir . '/../.ycm_extra_conf.py')
let g:ycm_confirm_extra_conf=0
let g:ycm_open_loclist_on_ycm_diags=0
let g:ycm_auto_trigger=1
let g:ycm_collect_identifiers_from_tags_files=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_show_diagnostics_ui=0
let g:ycm_enable_diagnostic_signs=0
let g:ycm_enable_diagnostic_highlighting=1

let rustcroot=systemlist('rustc --print sysroot')
if get(rustcroot, 0)
  let g:ycm_rust_src_path=get(rustcroot, 0) . '/lib/rustlib/src/rust/src'
endif

" rust
let g:rustfmt_autosave=1
let g:rust_recommended_style=0
let g:rustfmt_emit_files=1

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
let g:airline_section_error=0

" netrw
let g:netrw_sort_by='name'
let g:netrw_localrmdir='rm -r'
let g:netrw_nobeval=1
let g:netrw_keepdir=0

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
