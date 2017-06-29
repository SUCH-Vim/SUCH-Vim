" ----------------------------------------------------------------
"  NERDTree Setup
" ----------------------------------------------------------------

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd bufenter * if (bufname("%") == "NERD_tree_1")
            \| call g:NERDTree.ForCurrentTab().getRoot().refresh() 
            \| call g:NERDTree.ForCurrentTab().render() 
            \| endif

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

function! DeleteAllBuffers()
    execute "%bd | e#"
endfunction

call SUCHVim_add_categories_keybinding("buffers", "<leader>bg", ":call GoToBuffer()<cr>", "Go to buffer")
call SUCHVim_add_categories_keybinding("buffers", "<leader>bd", ":call DeleteBuffer()<cr>", "Delete buffer")
call SUCHVim_add_categories_keybinding("buffers", "<leader>bD", ":call DeleteAllBuffers()<cr>", "Delete all buffers")
call SUCHVim_add_categories_keybinding("buffers", "<leader>bb", ":buffers<CR>:buffer<Space>", "List buffers")
call SUCHVim_add_categories_keybinding("buffers", "<leader>be", ":e<Space>", "Create buffer")
call SUCHVim_add_categories_keybinding("buffers", "<leader>bl", ":bn<CR>", "Next buffer")
call SUCHVim_add_categories_keybinding("buffers", "<leader>bk", ":bn<CR>", "Next buffer")
call SUCHVim_add_categories_keybinding("buffers", "<leader>bh", ":bp<CR>", "Previous buffer")
call SUCHVim_add_categories_keybinding("buffers", "<leader>bj", ":bp<CR>", "Previous buffer")

call SUCHVim_add_categories_keybinding("buffers", "<leader>bt", ":NERDTreeToggle<CR>", "Toggle NERDTree")
