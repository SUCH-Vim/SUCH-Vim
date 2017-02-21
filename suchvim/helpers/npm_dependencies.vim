let s:SUCHVim_npm_path = $HOME."/.SUCH-Vim/suchvim/dependencies/npm/"
let $PATH .= ':'.s:SUCHVim_npm_path.'bin'

function! SUCHVim_check_npm_dependencies(dependencies)
    let missing_dependencies = SUCHVim_check_dependencies(a:dependencies)
    if len(missing_dependencies) != 0
        if SUCHVim_check_dependency("npm") == 0
            return SUCHVim_no_npm_npm_dependencies(missing_dependencies)
        else
            return SUCHVim_install_npm_dependencies(missing_dependencies)
        endif
    endif
    return []
endfunction

function! SUCHVim_install_npm_dependencies(dependencies)
    let npm_install_command = "!npm install --prefix ".s:SUCHVim_npm_path
    let installed_programs = []
    for dependency in a:dependencies
        call add(installed_programs, dependency)
        execute npm_install_command." ".dependency." -g"
    endfor
    return installed_programs
endfunction

function! SUCHVim_no_npm_npm_dependencies(dependencies)
    let message = "There are missing dependencies and npm is not installed :"
    let installed_programs = []
    for dependency in a:dependencies
        let message = message." ".dependency
        call add(installed_programs, dependency)
    endfor
    echom message
    return installed_programs
endfunction
