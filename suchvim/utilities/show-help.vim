" ----------------------------------------------------------------
"  Show help menu
" ----------------------------------------------------------------

function! SUCHVim_show_help()
    let messages = []
    let index = 1
    let vim_commands = []
    let patch = []
    for tag in g:help_tags
        call add(patch, index." ")
        call add(messages, tag)
        let vim_command = "autocmd FileType suchhelp nnoremap <buffer> ".index." :call SUCHVim_show_help_tag(\"".tag."\")<cr>"
        call add(vim_commands, vim_command)
        let index = index + 1
    endfor
    call SUCHVim_execute_commands(vim_commands)
    call s:show_help_windows("Menu", patch, messages)
endfunction

function! s:get_max_length_command(keys, comments, spacebetween, max_length_keys)
    let max_length_command = 0
    let comments_index = 0
    let max_length_commend_key = 0
    for key in a:keys
        if len(key) + a:spacebetween + len(a:comments[comments_index]) > max_length_command
            let max_length_command = len(key) + a:spacebetween + len(a:comments[comments_index])
            let max_length_commend_key = key
        endif
        let comments_index = comments_index + 1
    endfor
    return max_length_command + (a:max_length_keys - len(max_length_commend_key)) +1
endfunction

function! s:get_max_length_keys(keys)
    let max_length_command = 0
    for key in a:keys
        if len(key) > max_length_command
            let max_length_command = len(key)
        endif
    endfor
    return max_length_command
endfunction


function! s:get_comments_from_tag(tag)
    let tag_index = index(g:help_tags, a:tag)
    let comments = g:help_comments[tag_index]
    return comments
endfunction

function! s:get_keys_from_tag(tag)
    let tag_index = index(g:help_tags, a:tag)
    let keys = g:help_keybindings[tag_index]
    return keys
endfunction

function! SUCHVim_show_help_tag(tag)
    let comments = s:get_comments_from_tag(a:tag)
    let keys = s:get_keys_from_tag(a:tag)
    call s:show_help_windows(a:tag, keys, comments)
endfunction

function! s:show_help_windows(title, keys, comments)
    let line_number_width = 4
    let winwidth = winwidth(0) - line_number_width
    let spacebetween = " "
    let separator = "  → "
    let max_length_keys = s:get_max_length_keys(a:keys)
    let max_length_command = s:get_max_length_command(a:keys, a:comments, len(spacebetween) + 3, max_length_keys)
    let number_of_commands_per_line = winwidth / max_length_command
    let number_of_lines = (len(a:keys) / number_of_commands_per_line) + 1

    echom winwidth
    echom spacebetween
    echom separator
    echom max_length_keys
    echom max_length_command
    echom number_of_commands_per_line
    echom number_of_lines

    let number_of_lines_for_title = 3
    call s:create_suchhelp_split(number_of_lines + number_of_lines_for_title)
    let current_commands_insert = 0
    let current_index = 0
    let delemiter = ""
    while current_index != (winwidth/2 - len(a:title)/2 - 1)
        let delemiter = delemiter." "
        let current_index += 1
    endwhile
    call setline(1, delemiter.toupper(a:title))
    let delemiter = ""
    let current_index = 0
    while current_index != winwidth
        let delemiter = delemiter."_"
        let current_index += 1
    endwhile
    call setline(2, delemiter)
    call setline(3, "")

    let current_line_number = number_of_lines_for_title
    let current_line_messate = ""
    let comments_index = 0
    for key in a:keys
        if current_commands_insert == number_of_commands_per_line
            let current_line_number = current_line_number + 1
            let current_commands_insert = 0
            call setline(current_line_number, current_line_messate)
            let current_line_messate = ""
        endif

        let number_of_keys_padding = max_length_keys - len(key)
        let key_padding = ""
        while len(key_padding) != number_of_keys_padding
            let key_padding = key_padding." "
        endwhile
        let number_of_padding = max_length_command - len(key) - len(a:comments[comments_index]) - 3 - number_of_keys_padding - len(spacebetween)
        let padding = ""
        while len(padding) != number_of_padding
            let padding = padding." "
        endwhile
        let current_line_messate = current_line_messate.key_padding.key.separator.a:comments[comments_index].padding.spacebetween
        let current_commands_insert = current_commands_insert + 1
        let comments_index = comments_index + 1
    endfor
    call setline(current_line_number+1, current_line_messate)
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
