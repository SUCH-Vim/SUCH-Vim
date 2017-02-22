" ----------------------------------------------------------------
"  Add pip installation directory in $PATH and $PYTHONPATH
" ----------------------------------------------------------------

let s:SUCHVim_pip_path = $HOME."/.SUCH-Vim/suchvim/dependencies/pip"
let $PYTHONPATH .= ':'.s:SUCHVim_pip_path
let $PATH .= ':'.s:SUCHVim_pip_path."/bin/"

" ----------------------------------------------------------------
"  Check if python dependencies can be imported
" ----------------------------------------------------------------

function! SUCHVim_check_python_module_dependencies(module_dependencies)
    let missing_dependencies = []
    let python_test_module_begin = "try:\r\timport "
    let python_test_module_end = "\r\tprint(0)\rexcept ImportError:\r\tprint(1)\""
    for dependency in a:module_dependencies
        let vim_command = "python -c \"".python_test_module_begin.dependency.python_test_module_end
        let is_installed = system(vim_command)
        if is_installed == 1
            call add(missing_dependencies, dependency)
        endif
    endfor
    return missing_dependencies
endfunction

" ----------------------------------------------------------------
"  Install missing python modules
" ----------------------------------------------------------------

function! SUCHVim_check_pip_module_dependencies(dependencies)
    let missing_dependencies = SUCHVim_check_python_module_dependencies(a:dependencies)
    if len(missing_dependencies) != 0
        if SUCHVim_check_dependency("pip") == 0
            return SUCHVim_no_pip_pip_dependencies(missing_dependencies)
        else
            return SUCHVim_install_pip_module_dependencies(missing_dependencies)
        endif
    endif
    return []
endfunction

function! SUCHVim_install_pip_module_dependencies(dependencies)
    let pip_install_command = "!pip install --target=".s:SUCHVim_pip_path
    let installed_programs = []
    for dependency in a:dependencies
        call add(installed_programs, dependency)
        execute pip_install_command." ".dependency
    endfor
    return installed_programs
endfunction

" ----------------------------------------------------------------
"  Install missing python executables
" ----------------------------------------------------------------

function! SUCHVim_check_pip_executable_dependencies(dependencies)
    let missing_dependencies = SUCHVim_check_dependencies(a:dependencies)
    if len(missing_dependencies) != 0
        if SUCHVim_check_dependency("pip") == 1
            let pip_dependency_commands = SUCHVim_install_pip_executable_dependencies(missing_dependencies)
            call SUCHVim_execute_dependency_commands(pip_dependency_commands)
        else
            let pip_dependency_message = SUCHVim_echo_pip_dependencies(missing_dependencies)
            call SUCHVim_echo_dependency_commands(pip_dependency_message)
        endif
    endif
endfunction

function! SUCHVim_install_pip_executable_dependencies(dependencies)
    let pip_install_command = "!pip install --target=".s:SUCHVim_pip_path." --install-option=\"--install-scripts=".s:SUCHVim_pip_path."/bin\""
    let install_commands = []
    for dependency in a:dependencies
        call add(install_commands, pip_install_command." ".dependency)
    endfor
    return install_commands
endfunction

" ----------------------------------------------------------------
"  Print missing python dependencies
" ----------------------------------------------------------------

function! SUCHVim_echo_pip_dependencies(dependencies)
    let message = "There are missing dependencies [ "
    for dependency in a:dependencies
        let message = message.dependency." "
    endfor
    let message = message."], install pip or install them manualy." 
    return message
endfunction
