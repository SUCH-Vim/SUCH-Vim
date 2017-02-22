let s:SUCHVim_dependencies_sh_path = "~/.SUCH-Vim/suchvim/dependencies/dependencies.sh "

function! SUCHVim_check_dependency(program)
    let vim_command = "sh ".s:SUCHVim_dependencies_sh_path.a:program 
    let is_installed = system(vim_command)
    return is_installed
endfunction

function! SUCHVim_check_dependencies(dependencies)
    let missing_dependencies = []
    for dependency in a:dependencies
        if 0 == SUCHVim_check_dependency(dependency)
            call add(missing_dependencies, dependency)
        endif
    endfor
    return missing_dependencies
endfunction

function! SUCHVim_execute_dependency_commands(dependency_commands)
    for dependency_command in a:dependency_commands
        execute dependency_command
    endfor
endfunction

function! SUCHVim_echo_dependency_commands(dependencies_message)
    echo a:dependencies_message
endfunction
