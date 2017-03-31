" ----------------------------------------------------------------
"  Vim-instant_markdown config
" ----------------------------------------------------------------

let g:instant_markdown_autostart = 1
let g:instant_markdow_slow = 1 " only update content on save

" ----------------------------------------------------------------
"  Vim-markdown config
" ----------------------------------------------------------------

let g:vim_markdown_no_default_key_mappings = 1

" ----------------------------------------------------------------
"  Dependencies control
" ----------------------------------------------------------------

let dependencies = [ 'instant-markdown-d' ]
autocmd FileType markdown call SUCHVim_check_npm_dependencies(dependencies)
