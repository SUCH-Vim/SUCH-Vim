autocmd FileType json noremap <buffer> <leader>f :call JsonBeautify()<cr>
autocmd FileType json autocmd BufWritePre <buffer> call JsonBeautify()
