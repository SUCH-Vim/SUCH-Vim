autocmd FileType go noremap <buffer> <leader>r :GoRename<cr>
autocmd FileType go noremap <buffer> <leader>g :GoDef<cr>
let g:go_fmt_command = "goimports"
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
