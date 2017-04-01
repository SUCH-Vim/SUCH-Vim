autocmd FileType html autocmd BufWritePre <buffer> call HtmlBeautify()

call SUCHVim_add_filetype_keybinding("html", "<leader>f", ":call HtmlBeautify()<cr>", "Reformat file")
