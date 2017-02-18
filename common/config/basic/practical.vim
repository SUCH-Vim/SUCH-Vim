syntax enable
set tabstop=4 shiftwidth=4 expandtab
set clipboard^=unnamedplus
set ttimeoutlen=0
set nu
set relativenumber
set nowrap

" ----------------------------------------------------------------
"  UI Setup
" ----------------------------------------------------------------

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:Powerline_symbols = 'unicode'
let g:airline#extensions#tabline#buffer_nr_show = 1

" ----------------------------------------------------------------
"  For using Vader file
" ----------------------------------------------------------------

au BufRead,BufNewFile *.vader set filetype=vim
