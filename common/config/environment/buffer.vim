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
:nnoremap <Leader>be :e<Space>
:nnoremap <leader>l :bn<CR>
:nnoremap <leader>h :bp<CR>

:nnoremap <Leader>bd :bd<CR>
:nnoremap <Leader>b1d :1bd<CR>
:nnoremap <Leader>b2d :2bd<CR>
:nnoremap <Leader>b3d :3bd<CR>
:nnoremap <Leader>b4d :4bd<CR>
:nnoremap <Leader>b5d :5bd<CR>
:nnoremap <Leader>b6d :6bd<CR>
:nnoremap <Leader>b7d :7bd<CR>
:nnoremap <Leader>b8d :8bd<CR>
:nnoremap <Leader>b9d :9bd<CR>

:nnoremap <Leader>b1 :b1<CR>
:nnoremap <Leader>b2 :b2<CR>
:nnoremap <Leader>b3 :b3<CR>
:nnoremap <Leader>b4 :b4<CR>
:nnoremap <Leader>b5 :b5<CR>
:nnoremap <Leader>b6 :b6<CR>
:nnoremap <Leader>b7 :b7<CR>
:nnoremap <Leader>b8 :b8<CR>
:nnoremap <Leader>b9 :b9<CR>

