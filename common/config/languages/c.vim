autocmd FileType c,h noremap <buffer> <leader>f :%!astyle --mode=c --style=linux
            \--indent=spaces=4 --indent-switches --indent-cases --indent-preproc-block
            \--indent-preproc-define --indent-preproc-cond --indent-col1-comments
            \--break-blocks --max-code-length=120 --pad-oper --unpad-paren --add-brackets
            \ --convert-tabs <cr><cr>
autocmd FileType c,h autocmd BufWritePre <buffer> %!astyle --mode=c 
            \--style=linux --indent=spaces=4 --indent-switches --indent-cases 
            \--indent-preproc-block --indent-preproc-define --indent-preproc-cond 
            \--indent-col1-comments --break-blocks --max-code-length=120 --pad-oper 
            \--unpad-paren --add-brackets --convert-tabs
