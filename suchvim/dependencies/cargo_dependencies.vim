let s:SUCHVim_cargo_path = $HOME."/.vim/SUCH-Vim/dependencies/cargo/"
let $PATH .= ':'.s:SUCHVim_cargo_path.'bin'

function! SUCHVim_check_cargo_dependencies(dependencies)
    let missing_dependencies = SUCHVim_check_dependencies(a:dependencies)
    if len(missing_dependencies) != 0
        if SUCHVim_check_dependency("cargo") == 1
            let cargo_dependency_commands = SUCHVim_install_cargo_dependencies(missing_dependencies)
            call SUCHVim_execute_dependency_commands(cargo_dependency_commands)
        else
            let cargo_dependency_message = SUCHVim_echo_cargo_dependencies(missing_dependencies)
            call SUCHVim_echo_dependency_commands(cargo_dependency_message)
        endif
    endif
endfunction

function! SUCHVim_install_cargo_dependencies(dependencies)
    let cargo_install_command = "!cargo install --root ".s:SUCHVim_cargo_path
    let install_commands = []
    for dependency in a:dependencies
        call add(install_commands, cargo_install_command." ".dependency)
    endfor
    return install_commands
endfunction

function! SUCHVim_echo_cargo_dependencies(dependencies)
    let message = "There are missing dependencies [ "
    for dependency in a:dependencies
        let message = message.dependency." "
    endfor
    let message = message."], install cargo or install them manualy." 
    return message
endfunction
