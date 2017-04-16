autocmd FileType go noremap <buffer> <leader>r :GoRename<cr>
autocmd FileType go noremap <buffer> <leader>g :GoDef<cr>
let g:go_fmt_command = "goimports"

call SUCHVim_add_filetype_keybinding("go", "<leader>r", ":GoRename()<cr>", "Rename")
call SUCHVim_add_filetype_keybinding("go", "<leader>g", ":GoDef()<cr>", "Go to definition")
