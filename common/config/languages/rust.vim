autocmd FileType rust noremap <buffer> <leader>f :RustFmt<cr>
autocmd FileType rust noremap <buffer> <leader>R :RustRun<cr>

let g:rustfmt_autosave = 1

" ----------------------------------------------------------------
"  Dependencies control
" ----------------------------------------------------------------

let dependencies = [ 'rustfmt' ]
autocmd FileType rust call SUCHVim_check_cargo_dependencies(dependencies)
