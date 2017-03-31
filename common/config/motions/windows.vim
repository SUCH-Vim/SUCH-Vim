nnoremap <leader>wq :q<Enter>
nnoremap <leader>wrl :vertical resize +5<Enter>
nnoremap <leader>wrh :vertical resize -5<Enter>
nnoremap <leader>wrj :res +5<Enter>
nnoremap <leader>wrk :res -5<Enter>
nnoremap <leader>wr<Right> :vertical resize +5<Enter>
nnoremap <leader>wr<Left> :vertical resize -5<Enter>
nnoremap <leader>wml <C-w>L 
nnoremap <leader>wm<Right> <C-w>L

call SUCHVim_add_motions_keybinding("<leader>wl", "<C-w>l", "move to right pane")
call SUCHVim_add_motions_keybinding("<leader>wh", "<C-w>h", "move to left pane")
call SUCHVim_add_motions_keybinding("<leader>wj", "<C-w>j", "move to bottom pane")
call SUCHVim_add_motions_keybinding("<leader>wk", "<C-w>k","move to top pane")

call SUCHVim_add_motions_keybinding("<leader>w<Right>", "<C-w>l", "move to right pane")
call SUCHVim_add_motions_keybinding("<leader>w<Left>", "<C-w>h", "move to left pane")
call SUCHVim_add_motions_keybinding("<leader>w<Down>", "<C-w>j", "move to bottom pane")
call SUCHVim_add_motions_keybinding("<leader>w<Up>", "<C-w>k", "move to top pane")

call SUCHVim_add_motions_keybinding("<leader>wv", "<C-w>v", "split vertical")
call SUCHVim_add_motions_keybinding("<leader>wb", "<C-w>S", "split horizontal")

