autocmd FileType javascript noremap <buffer>  <leader>f :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <leader>g :TernDef<cr>
autocmd FileType javascript noremap <buffer>  <leader>r :TernRename<cr>
autocmd FileType javascript noremap <buffer>  <leader>d :TernDoc<cr>

let g:editorconfig_Beautifier = "~/Documents/Github/Config/neovim/languages/js-beautify"



autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
