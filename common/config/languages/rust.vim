"autocmd FileType rust noremap <buffer> <leader>f :RustFmt<cr>
"autocmd FileType rust noremap <buffer> <leader>R :RustRun<cr>

call SUCHVim_add_filetype_keybinding("rust", "<leader>f", ":RustFmt<cr>", "Reformat file")
call SUCHVim_add_filetype_keybinding("rust", "<leader>R", ":RustRun<cr>", "Run")

let g:rustfmt_autosave = 1

" ----------------------------------------------------------------
"  Dependencies control
" ----------------------------------------------------------------

let s:dependencies = [ 'rustfmt' ]
autocmd FileType rust call SUCHVim_check_cargo_dependencies(s:dependencies)
