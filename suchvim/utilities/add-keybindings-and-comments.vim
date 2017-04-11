" ----------------------------------------------------------------
"  Add keybindings and build comments
" ----------------------------------------------------------------

let g:help_tags = []
let g:help_keybindings = []
let g:help_comments = []
let g:remap_commands = []

function! s:add_documentation_and_keybindings(filetype, keys, comment, vim_command)
    call add(g:remap_commands, a:vim_command)
    let tag_index = index(g:help_tags, a:filetype) + 1
    if tag_index == 0
        call add(g:help_tags, a:filetype)
        let tag_index = len(g:help_tags)
    endif
    if len(g:help_keybindings) < tag_index
        call add(g:help_keybindings, [])
        call add(g:help_comments, [])
    endif
    let number_of_messages = len(g:help_keybindings[tag_index-1])+1 
    call add(g:help_keybindings[tag_index-1]," ".a:keys)
    call add(g:help_comments[tag_index-1], a:comment)
endfunction

function! SUCHVim_add_filetype_keybinding(filetype, keys, command, comment)
    let vim_command = "autocmd FileType ".a:filetype." nnoremap <buffer> ".a:keys." ".a:command
    call s:add_documentation_and_keybindings(a:filetype, a:keys, a:comment, vim_command)
endfunction

function! SUCHVim_add_filetype_command(filetype, keys, command, comment)
    let vim_command = "autocmd FileType ".a:filetype." ".a:command
    call s:add_documentation_and_keybindings(a:filetype, a:keys, a:comment, vim_command)
endfunction

function! SUCHVim_add_motions_keybinding(keys, command, comment)
    let vim_command = "nnoremap ".a:keys." ".a:command
    call s:add_documentation_and_keybindings("motions", a:keys, a:comment, vim_command)
endfunction
