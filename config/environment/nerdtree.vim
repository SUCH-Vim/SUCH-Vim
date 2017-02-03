" ----------------------------------------------------------------
"  NERDTree Setup
" ----------------------------------------------------------------

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <leader>tt :NERDTreeToggle<CR>
