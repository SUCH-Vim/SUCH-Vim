let s:SUCHVim_pip_path = $HOME."/.SUCH-Vim/suchvim/dependencies/pip/"
let $PYTHONPATH .= ':'.s:SUCHVim_pip_path

function! SUCHVim_check_python_module_dependencies(module_dependencies)
    let missing_dependencies = []
    let python_test_module_begin = "try:\r\timport "
    let python_test_module_end = "\r\tprint(0)\rexcept ImportError:\r\tprint(1)\""
    for dependency in a:module_dependencies
        let vim_command = "python -c \"".python_test_module_begin.dependency.python_test_module_end
        echom vim_command
        let is_installed = system(vim_command)
        echom is_installed
        if is_installed == 1
            echom "missing ".dependency
            call add(missing_dependencies, dependency)
        endif
    endfor
    return missing_dependencies
endfunction

function! SUCHVim_check_pip_dependencies(dependencies)
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

