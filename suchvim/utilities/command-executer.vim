function! SUCHVim_execute_commands(vim_commands)
    for vim_command in a:vim_commands
        execute vim_command
    endfor
endfunction
