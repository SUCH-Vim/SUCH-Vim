" ----------------------------------------------------------------
"  Jedi config
" ----------------------------------------------------------------
  
autocmd FileType python let g:jedi#force_py_version = 3

call SUCHVim_add_filetype_command("python", "<leader>r", "let g:jedi#rename_command = \"<leader>r\"", "Rename")
call SUCHVim_add_filetype_command("python", "<leader>n", "let g:jedi#usages_command = \"<leader>n\"", "Usage")
call SUCHVim_add_filetype_command("python", "<leader>d", "let g:jedi#documentation_command = \"<leader>d\"", "Show doc")
call SUCHVim_add_filetype_command("python", "<leader>g", "let g:jedi#goto_definitions_command = \"<leader>g\"", "Go to definition")

" ----------------------------------------------------------------
"  Yapf config
" ----------------------------------------------------------------

call SUCHVim_add_filetype_keybinding("python", "<leader>f", ":call SUCHVim_format_python()", "Format file")
autocmd FileType python autocmd BufWritePre <buffer> call SUCHVim_format_python()

" ----------------------------------------------------------------
"  Dependencies control
" ----------------------------------------------------------------

let s:python_pip_module_dependencies = [ 'jedi', ]
let s:python_pip_executable_dependencies = [ 'yapf' , 'pylint']
autocmd FileType python call SUCHVim_check_pip_executable_dependencies(s:python_pip_executable_dependencies)
autocmd FileType python call SUCHVim_check_pip_module_dependencies(s:python_pip_module_dependencies)

function! SUCHVim_format_python()
    let current_cursor = getpos(".")
    silent execute "0,$!yapf"
    if v:shell_error != 0
        silent undo
        echoerr "Error in file, unable to format"
    endif
    call setpos('.', current_cursor)
endfunction

" ----------------------------------------------------------------
"  Better syntax
" ----------------------------------------------------------------

autocmd FileType python syn keyword pythonSelf self | highlight def link pythonSelf Special
