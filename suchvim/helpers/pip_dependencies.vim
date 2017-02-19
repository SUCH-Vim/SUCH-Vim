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
            echom "missing ".dependency
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
    let installed_programs = []
    if len(missing_dependencies) != 0
        let pip_install_command = "!pip install --target=".s:SUCHVim_pip_path
        for dependency in missing_dependencies
            call add(installed_programs, dependency)
            execute pip_install_command." ".dependency
        endfor
    endif
    return installed_programs
endfunction

" ----------------------------------------------------------------
"  Install missing python executables
" ----------------------------------------------------------------

function! SUCHVim_check_pip_executable_dependencies(dependencies)
    let missing_dependencies = SUCHVim_check_dependencies(a:dependencies)
    let installed_programs = []
    if len(missing_dependencies) != 0
        let pip_install_command = "!pip install --target=".s:SUCHVim_pip_path." --install-option=\"--install-scripts=".s:SUCHVim_pip_path."/bin\""
        for dependency in missing_dependencies
            call add(installed_programs, dependency)
            execute pip_install_command." ".dependency
        endfor
    endif
    return installed_programs
endfunction
