" ----------------------------------------------------------------
"  NERDTree Setup
" ----------------------------------------------------------------

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd CursorHold,CursorHoldI * call NERDTreeFocus() | call g:NERDTree.ForCurrentTab().getRoot().refresh() | call g:NERDTree.ForCurrentTab().render() | wincmd w
nnoremap <leader>tt :NERDTreeToggle<CR>

" ----------------------------------------------------------------
"  Ctrlp Setup
" ----------------------------------------------------------------

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <Leader>ff :CtrlP<CR>
let g:ctrlp_working_path_mode = 'ra'
