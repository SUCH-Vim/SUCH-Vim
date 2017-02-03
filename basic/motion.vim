" ----------------------------------------------------------------
"  Easymotion Setup
" ----------------------------------------------------------------

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.

" search for a character
" `<Leader>;{char}{label}`
nmap <Leader>; <Plug>(easymotion-overwin-f)

" search for 2 characters
" `<Leader>l{char}{char}{label}`
nmap <Leader>l <Plug>(easymotion-overwin-f2)

" search for n characters
" `<Leader>ss{char}{char}...{char}<Enter>`
map  <Leader>ss <Plug>(easymotion-sn)
omap <Leader>ss <Plug>(easymotion-tn)

let g:EasyMotion_smartcase = 1

" jk motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
