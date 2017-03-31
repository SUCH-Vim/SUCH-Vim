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

function! GoToBuffer()
  let curline = getline('.')
  call inputsave()
  let buffer_number = input('[GO TO BUFFER] Buffer number: ')
  call inputrestore()
  let vim_command = "b".buffer_number
  execute vim_command
endfunction

function! DeleteBuffer()
  let curline = getline('.')
  call inputsave()
  let buffer_number = input('[DELETE BUFFER] Buffer number: ')
  call inputrestore()
  let vim_command = buffer_number."bd"
  execute vim_command
endfunction

nnoremap <Leader>bg :call GoToBuffer()<CR>
nnoremap <Leader>bd :call DeleteBuffer()<CR>

nnoremap <Leader>bb :buffers<CR>:buffer<Space>
nnoremap <Leader>be :e<Space>

nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
