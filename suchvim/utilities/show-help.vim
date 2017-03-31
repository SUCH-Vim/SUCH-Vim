" ----------------------------------------------------------------
"  Show help per category
" ----------------------------------------------------------------

function! s:get_max_length_command(messages, spacebetween)
    let max_length_command = 0
    for message in a:messages
        if len(message) + a:spacebetween > max_length_command
            let max_length_command = len(message) + a:spacebetween
        endif
    endfor
    return max_length_command
endfunction

function! s:get_message_from_tag(tag)
    let tag_index = index(g:help_tags, a:tag)
    let messages = g:help_keybindings[tag_index]
    return messages
endfunction

function! SUCHVim_show_help_tag(tag)
    let messages = s:get_message_from_tag(a:tag)
    call s:show_help_windows(messages)
    endfunction

function! s:show_help_windows(messages)
    let winwidth = winwidth(0)
    let spacebetween = "   "
    let max_length_command = s:get_max_length_command(a:messages, len(spacebetween) + 1)
    let number_of_commands_per_line = winwidth / max_length_command
    let number_of_lines = (len(a:messages) / number_of_commands_per_line) + 1

    call s:create_suchhelp_split(number_of_lines)

    let current_commands_insert = 0
    let current_line_number = 0
    let current_line_messate = ""
    for message in a:messages
        if current_commands_insert == number_of_commands_per_line
            let current_line_number = current_line_number + 1
            let current_commands_insert = 0
            call setline(current_line_number, current_line_messate)
            let current_line_messate = ""
        endif
        let number_of_padding = max_length_command - len(message) + len(spacebetween)
        let padding = ""
        while len(padding) != number_of_padding
            let padding = padding." "
        endwhile
        let current_line_messate = current_line_messate.message.padding
        let current_commands_insert = current_commands_insert + 1
    endfor
    call setline(current_line_number+1, current_line_messate)

endfunction

" ----------------------------------------------------------------
"  Show help menu
" ----------------------------------------------------------------

function! SUCHVim_show_help()
    let messages = []
    let index = 1
    let vim_commands = []
    for tag in g:help_tags
        call add(messages,index." : ".tag)
        let vim_command = "autocmd FileType suchhelp nnoremap <buffer> ".index." :call SUCHVim_show_help_tag(\"".tag."\")<cr>"
        call add(vim_commands, vim_command)
        let index = index + 1
    endfor
    call SUCHVim_execute_commands(vim_commands)
    call s:show_help_windows(messages)
endfunction

function s:create_suchhelp_split(number_of_lines)
    try
        bdelete __SUCH_HELP__
    catch
    endtry
    execute a:number_of_lines."split __SUCH_HELP__"
    normal! ggdG
    setlocal filetype=suchhelp
    setlocal buftype=nofile
endfunction

" ----------------------------------------------------------------
"  Add keybindings and build comments
" ----------------------------------------------------------------

let g:help_tags = []
let g:help_keybindings = []
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
    endif
    let number_of_messages = len(g:help_keybindings[tag_index-1])+1 
    let doc = "- ".a:keys." -> ".a:comment
    call add(g:help_keybindings[tag_index-1], doc)
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
