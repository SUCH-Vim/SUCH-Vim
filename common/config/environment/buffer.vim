" ----------------------------------------------------------------
"  NERDTree Setup
" ----------------------------------------------------------------

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd bufenter * if (bufname("%") == "NERD_tree_1")
            \| call g:NERDTree.ForCurrentTab().getRoot().refresh() 
            \| call g:NERDTree.ForCurrentTab().render() 
            \| endif
nnoremap <leader>tt :NERDTreeToggle<CR>

" ----------------------------------------------------------------
"  Ctrlp Setup
" ----------------------------------------------------------------

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <Leader>ff :CtrlP<CR>
let g:ctrlp_working_path_mode = 'ra'


" ----------------------------------------------------------------
"  Buffer list Setup
" ----------------------------------------------------------------
"

:nnoremap <Leader>b :buffers<CR>:buffer<Space>
:nnoremap <Leader>bd :bd<CR>
