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

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" ----------------------------------------------------------------
"  Easymotion Setup
" ----------------------------------------------------------------

" Jump to anywhere you want with minimal keystrokes, with just one key binding.

" `<Leader>,{char}{label}`
nmap <Leader>, <Plug>(easymotion-overwin-f)

" `<Leader><Leader>,{char}{char}{label}`
nmap <Leader><Leader>, <Plug>(easymotion-overwin-f2)

let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
