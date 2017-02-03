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


" ----------------------------------------------------------------
"  Easymotion Setup
" ----------------------------------------------------------------

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.

" search for a character
" `<Leader>,{char}{label}`
nmap <Leader>; <Plug>(easymotion-overwin-f)

" search for 2 characters
" `<Leader><Leader>,{char}{char}{label}`
nmap <Leader><Leader>; <Plug>(easymotion-overwin-f2)

" search for n characters
" `<Leader>ss{char}{char}...{char}<Enter>`
map  <Leader>ss <Plug>(easymotion-sn)
omap <Leader>ss <Plug>(easymotion-tn)

let g:EasyMotion_smartcase = 1

" jk motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

