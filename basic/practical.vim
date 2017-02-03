syntax enable
let mapleader = " "
set clipboard^=unnamedplus
set ttimeoutlen=0
set nu
set relativenumber
set nowrap

" ----------------------------------------------------------------
"  Autocompletion Setup
" ----------------------------------------------------------------

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:neocomplete#enable_at_startup = 1

" ----------------------------------------------------------------
"  UI Setup
" ----------------------------------------------------------------

let base16colorspace=256
set t_Co=256
colorscheme gruvbox
set background=dark
let g:airline#extensions#tabline#enabled = 1
