let s:user_plugins = []

function! SUCHVim_addPlugin(plugin)
    let plugin_command = "Plug '".a:plugin."'"
    call add(s:user_plugins, plugin_command)
    return s:user_plugins
endfunction

function! SUCHVim_addPlugins(plugins)
    for plugin in a:plugins
        call SUCHVim_addPlugin(plugin)
    endfor
    return s:user_plugins
endfunction

function! SUCHVim_loadUserPlugin()
    for plugin_command in s:user_plugins
        execute plugin_command
    endfor
endfunction
