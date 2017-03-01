" ----------------------------------------------------------------
"  Jedi config
" ----------------------------------------------------------------
  
autocmd FileType python let g:jedi#goto_definitions_command = "<leader>g"
autocmd FileType python let g:jedi#documentation_command = "<leader>d"
autocmd FileType python let g:jedi#usages_command = "<leader>n"
autocmd FileType python let g:jedi#rename_command = "<leader>r"
autocmd FileType python let g:jedi#force_py_version = 3

" ----------------------------------------------------------------
"  Yapf config
" ----------------------------------------------------------------

autocmd FileType python nnoremap <buffer> <leader>f call SUCHVim_format_python()
autocmd FileType python autocmd BufWritePre <buffer> call SUCHVim_format_python()

" ----------------------------------------------------------------
"  Dependencies control
" ----------------------------------------------------------------

let python_pip_module_dependencies = [ 'jedi', ]
let python_pip_executable_dependencies = [ 'yapf' , 'pylint']
autocmd FileType python call SUCHVim_check_pip_executable_dependencies(python_pip_executable_dependencies)
autocmd FileType python call SUCHVim_check_pip_module_dependencies(python_pip_module_dependencies)

function! SUCHVim_format_python()
    let current_cursor = getpos(".")
    silent execute "0,$!yapf"
    if v:shell_error != 0
        silent undo
        echoerr "Error in file, unable to format"
    endif
    call setpos('.', current_cursor)
endfunction
