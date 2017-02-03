autocmd FileType html noremap <buffer> <leader>f :call HtmlBeautify()<cr>
autocmd FileType html autocmd BufWritePre <buffer> call HtmlBeautify()
