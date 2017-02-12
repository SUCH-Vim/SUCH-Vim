" ----------------------------------------------------------------
"  Spell checking config
" ----------------------------------------------------------------

autocmd FileType markdown let g:lexical#spell_key = "<leader>ty"
autocmd FileType tex let g:lexical#spell_key = "<leader>ty"

autocmd FileType markdown :call lexical#init()
autocmd FileType tex :call lexical#init()
