let s:SUCHVim_npm_path = $HOME."/.vim/SUCH-Vim/dependencies/npm/"
let $PATH .= ':'.s:SUCHVim_npm_path.'bin'

function! SUCHVim_check_npm_dependencies(dependencies)
    let missing_dependencies = SUCHVim_check_dependencies(a:dependencies)
    if len(missing_dependencies) != 0
        if SUCHVim_check_dependency("npm") == 1
            let npm_dependency_commands = SUCHVim_install_npm_dependencies(missing_dependencies)
            call SUCHVim_execute_dependency_commands(npm_dependency_commands)
        else
            let npm_dependency_message = SUCHVim_echo_npm_dependencies(missing_dependencies)
            call SUCHVim_echo_dependency_commands(npm_dependency_message)
        endif
    endif
endfunction

function! SUCHVim_install_npm_dependencies(dependencies)
    let npm_install_command = "!npm install --prefix ".s:SUCHVim_npm_path
    let install_commands = []
    for dependency in a:dependencies
        call add(install_commands, npm_install_command." ".dependency." -g")
    endfor
    return install_commands
endfunction

function! SUCHVim_echo_npm_dependencies(dependencies)
    let message = "There are missing dependencies [ "
    for dependency in a:dependencies
        let message = message.dependency." "
    endfor
    let message = message."], install npm or install them manualy." 
    return message
endfunction
