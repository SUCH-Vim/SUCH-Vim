" ----------------------------------------------------------------
"  Jedi config
" ----------------------------------------------------------------
  
autocmd FileType python let g:jedi#goto_definitions_command = "<leader>g"
autocmd FileType python let g:jedi#documentation_command = "<leader>d"
autocmd FileType python let g:jedi#usages_command = "<leader>n"
autocmd FileType python let g:jedi#rename_command = "<leader>r"
autocmd FileType python let g:jedi#force_py_version = 3

" ----------------------------------------------------------------
"  Python-Mode config
" ----------------------------------------------------------------

autocmd FileType python autocmd BufWritePre <buffer> :PymodeLintAuto
let g:pymode_python = 'python3'
let g:pymode_rope = 0
let g:pymode_folding = 0
