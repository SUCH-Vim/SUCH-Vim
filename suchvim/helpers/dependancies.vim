let s:SUCHVim_dependancies_sh_path = "~/.SUCH-Vim/suchvim/helpers/dependancies.sh "

function! SUCHVim_check_dependancie(program)
    let vim_command = "!sh ".s:SUCHVim_dependancies_sh_path.a:program 
    let is_installed = system(vim_command)
    return is_installed
endfunction
