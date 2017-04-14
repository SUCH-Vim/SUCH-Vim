autocmd FileType c,h autocmd BufWritePre <buffer> call SUCHVim_format_c()

function! SUCHVim_format_c()
    let current_cursor = getpos(".")
    silent execute "0,$!astyle --mode=c --style=linux --indent=spaces=4 --indent-switches --indent-cases " . 
                 \ "--indent-preproc-block --indent-preproc-define --indent-preproc-cond --indent-col1-comments " .
                 \ "--break-blocks --max-code-length=120 --pad-oper --unpad-paren --add-brackets --convert-tabs"
    if v:shell_error != 0
        silent undo
        echoerr "Error in file, unable to format"
    endif
    call setpos('.', current_cursor) 
endfunction

