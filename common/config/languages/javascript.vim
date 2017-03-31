autocmd FileType javascript autocmd BufWritePre <buffer> call JsxBeautify()
"autocmd FileType javascript noremap <buffer>  <leader>f :call JsxBeautify()<cr>
"autocmd FileType javascript noremap <buffer>  <leader>g :TernDef<cr>
"autocmd FileType javascript noremap <buffer>  <leader>r :TernRename<cr>
"autocmd FileType javascript noremap <buffer>  <leader>d :TernDoc<cr>

call SUCHVim_add_filetype_keybinding("javascript", "<leader>f", ":call JsxBeautify()<cr>", "Reformat file")
call SUCHVim_add_filetype_keybinding("javascript", "<leader>r", ":TernRename<cr>", "Rename")
call SUCHVim_add_filetype_keybinding("javascript", "<leader>g", ":TernDef<cr>", "Go to definition")
call SUCHVim_add_filetype_keybinding("javascript", "<leader>d", ":TernDoc<cr>", "Show doc ")

let g:editorconfig_Beautifier = "~/.SUCH-Vim/common/config/languages/js-beautify"

" ----------------------------------------------------------------
"  Dependencies control
" ----------------------------------------------------------------

let dependencies = [ 'tern', 'eslint' ]
autocmd FileType javascript call SUCHVim_check_npm_dependencies(dependencies)
