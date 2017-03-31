function! SUCHVim_show_help()
    15split("SUCH Help")
    view ~/.SUCH-Vim/doc/windows-moves.txt
endfunction

let g:help_tags = []
let g:help_keybindings = []
let g:remap_commands = []
function! SUCHVim_add_motions_keybinding(keys, command, comment)
    let vim_command = "nnoremap ".a:keys." ".a:command
    let doc = a:keys." -> ".a:comment
    call add(g:remap_commands, vim_command)
    let tag_index = index(g:help_tags, "motions")
    if tag_index == -1
        call add(g:help_tags, "motions")
        let tag_index = len(g:help_tags)
    endif
    if len(g:help_keybindings) < tag_index
        call add(g:help_keybindings, [])
    endif
    call add(g:help_keybindings[tag_index-1], doc)
endfunction
