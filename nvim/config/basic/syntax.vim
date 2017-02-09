autocmd! BufWritePost * Neomake
let g:neomake_open_list = 2
let g:neomake_check_on_open = 1
let g:neomake_c_enabled_makers = ['clangcheck']
autocmd VimEnter * Neomake

