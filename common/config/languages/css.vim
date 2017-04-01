autocmd FileType css autocmd BufWritePre <buffer> call CSSBeautify()

call SUCHVim_add_filetype_keybinding("css", "<leader>f", ":call CSSBeautify()<cr>", "Reformat file")
