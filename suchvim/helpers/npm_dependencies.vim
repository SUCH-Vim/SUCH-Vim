let s:SUCHVim_npm_path = $HOME."/.SUCH-Vim/suchvim/dependencies/npm/"
let $PATH .= ':'.s:SUCHVim_npm_path.'bin'

function! SUCHVim_check_npm_dependencies(dependencies)
    let missing_dependencies = SUCHVim_check_dependencies(a:dependencies)
    if len(missing_dependencies) != 0
        let npm_install_command = "!npm install --prefix ".s:SUCHVim_npm_path
        let vim_commands = []
        for dependency in missing_dependencies
            execute npm_install_command." ".dependency." -g"
        endfor
    endif
endfunction
