autocmd FileType javascript autocmd BufWritePre <buffer> call JsxBeautify()
autocmd FileType javascript noremap <buffer>  <leader>f :call JsxBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <leader>g :TernDef<cr>
autocmd FileType javascript noremap <buffer>  <leader>r :TernRename<cr>
autocmd FileType javascript noremap <buffer>  <leader>d :TernDoc<cr>

let g:editorconfig_Beautifier = "~/.SUCH-Vim/common/config/languages/js-beautify"

" ----------------------------------------------------------------
"  Dependencies control
" ----------------------------------------------------------------

let s:dependencies = [ 'tern', 'eslint' ]
autocmd FileType javascript call SUCHVim_check_npm_dependencies(s:dependencies)
