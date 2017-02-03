autocmd FileType css noremap <buffer> <leader>f :call CSSBeautify()<cr>
autocmd FileType css autocmd BufWritePre <buffer> call CSSBeautify()
