nnoremap <leader>wq :q<Enter>
nnoremap <leader>wrl :vertical resize +5<Enter>
nnoremap <leader>wrh :vertical resize -5<Enter>
nnoremap <leader>wrj :res +5<Enter>
nnoremap <leader>wrk :res -5<Enter>
nnoremap <leader>wr<Right> :vertical resize +5<Enter>
nnoremap <leader>wr<Left> :vertical resize -5<Enter>
nnoremap <leader>wml <C-w>L 
nnoremap <leader>wm<Right> <C-w>L

call SUCHVim_add_categories_keybinding("windows", "<leader>wl", "<C-w>l", "move to right pane")
call SUCHVim_add_categories_keybinding("windows", "<leader>wh", "<C-w>h", "move to left pane")
call SUCHVim_add_categories_keybinding("windows", "<leader>wj", "<C-w>j", "move to bottom pane")
call SUCHVim_add_categories_keybinding("windows", "<leader>wk", "<C-w>k","move to top pane")

call SUCHVim_add_categories_keybinding("windows", "<leader>w<Right>", "<C-w>l", "move to right pane")
call SUCHVim_add_categories_keybinding("windows", "<leader>w<Left>", "<C-w>h", "move to left pane")
call SUCHVim_add_categories_keybinding("windows", "<leader>w<Down>", "<C-w>j", "move to bottom pane")
call SUCHVim_add_categories_keybinding("windows", "<leader>w<Up>", "<C-w>k", "move to top pane")

call SUCHVim_add_categories_keybinding("windows", "<leader>wv", "<C-w>v", "split vertical")
call SUCHVim_add_categories_keybinding("windows", "<leader>wb", "<C-w>S", "split horizontal")

call SUCHVim_add_categories_keybinding("tabs", "<leader>tl", ":tabnext<cr>", "next tab")
call SUCHVim_add_categories_keybinding("tabs", "<leader>th", ":tabprev<cr>", "prev tab")
call SUCHVim_add_categories_keybinding("tabs", "<leader>tk", ":tabbext<cr>", "next tab")
call SUCHVim_add_categories_keybinding("tabs", "<leader>tj", ":tabprev<cr>", "prev tab")
call SUCHVim_add_categories_keybinding("tabs", "<leader>tn", ":tabnew<cr>", "create new tab")
call SUCHVim_add_categories_keybinding("tabs", "<leader>tc", ":tabclose<cr>", "close tab")
