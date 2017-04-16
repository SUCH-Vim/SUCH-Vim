" ----------------------------------------------------------------
"  Vimtex config
" ----------------------------------------------------------------

let g:vimtex_format_enabled=1
let g:vimtex_fold_enabled=1
let g:vimtex_latexmk_continuous=0

:function BuildAndView()
:   VimtexCompile
:   VimtexView
:endfunction

call SUCHVim_add_filetype_keybinding("tex", "<leader>f", "gq<Enter>", "Reformat equation")
call SUCHVim_add_filetype_keybinding("tex", "<leader>R", ":call BuildAndView()<cr>", "Build and view")
call SUCHVim_add_filetype_keybinding("tex", "<leader>b", ":VimtexCompile()<cr>", "Build")
