" ----------------------------------------------------------------
"  Autocompletion Setup
" ----------------------------------------------------------------

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:deoplete#enable_at_startup = 1

let python_pip_module_dependencies = [ 'neovim' ]
call SUCHVim_check_pip_module_dependencies(python_pip_module_dependencies)
