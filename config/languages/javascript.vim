autocmd FileType javascript autocmd BufWritePre <buffer> call JsBeautify()
autocmd FileType javascript noremap <buffer>  <leader>f :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <leader>g :TernDef<cr>
autocmd FileType javascript noremap <buffer>  <leader>r :TernRename<cr>
autocmd FileType javascript noremap <buffer>  <leader>d :TernDoc<cr>

let g:editorconfig_Beautifier = "~/.SUCH-Vim/config/languages/js-beautify"
