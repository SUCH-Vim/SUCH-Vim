" ----------------------------------------------------------------
"  Jedi config
" ----------------------------------------------------------------
  
autocmd FileType python let g:jedi#goto_definitions_command = "<leader>g"
autocmd FileType python let g:jedi#documentation_command = "<leader>d"
autocmd FileType python let g:jedi#usages_command = "<leader>n"
autocmd FileType python let g:jedi#rename_command = "<leader>r"
autocmd FileType python let g:jedi#force_py_version = 3

" ----------------------------------------------------------------
"  Yapf config
" ----------------------------------------------------------------
  
autocmd FileType python autocmd BufWritePre <buffer> :0,$!yapf
autocmd FileType python nnoremap <buffer> <leader>f :0,$!yapf<Cr><C-o>