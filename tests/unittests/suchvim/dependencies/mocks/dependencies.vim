let s:installed_dependencies = []
let s:not_installed_dependencies = []
let s:executed_dependency_commands = []
let s:check_dependency = 0
let s:dependencies_message = ""

function! SUCHVim_set_installed_dependencies(dependencies)
    let s:installed_dependencies = a:dependencies
endfunction

function! SUCHVim_set_not_installed_dependencies(dependencies)
    let s:not_installed_dependencies = a:dependencies
endfunction

function! SUCHVim_check_dependencies(dependencies)
    return s:not_installed_dependencies
endfunction

function! SUCHVim_set_check_dependency(dependency)
    let s:check_dependency = a:dependency
endfunction

function! SUCHVim_check_dependency(dependencies)
    return s:check_dependency
endfunction

function! SUCHVim_execute_dependency_commands(dependency_commands)
    let s:executed_dependency_commands = a:dependency_commands
endfunction

function! SUCHVim_get_execute_dependency_commands()
    return s:executed_dependency_commands
endfunction

function! SUCHVim_echo_dependency_commands(dependencies_message)
    let s:dependencies_message = a:dependencies_message
endfunction

function! SUCHVim_get_echo_dependency_commands()
    return s:dependencies_message
endfunction

function! SUCHVim_check_python_module_dependencies(dependencies)
    return s:not_installed_dependencies
endfunction
