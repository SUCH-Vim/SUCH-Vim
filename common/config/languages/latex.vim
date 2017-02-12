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

autocmd FileType tex noremap <buffer> <leader>f gq<Enter>
autocmd FileType tex noremap <buffer> <leader>R :call BuildAndView()<cr>
autocmd FileType tex noremap <buffer> <leader>b :VimtexCompile<cr>
