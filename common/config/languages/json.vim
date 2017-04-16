autocmd FileType json autocmd BufWritePre <buffer> call JsonBeautify()

call SUCHVim_add_filetype_keybinding("json", "<leader>f", ":call JsonBeautify()<cr>", "Reformat file")
