let s:user_plugins = []

function! SUCHVim_addPlugin(plugin)
    let plugin_command = "Plug '".a:plugin."'"
    call add(s:user_plugins, plugin_command)
endfunction

function! SUCHVim_addPlugins(plugins)
    for plugin in a:plugins
        call SUCHVim_addPlugin(plugin)
    endfor
endfunction

function! SUCHVim_loadUserPlugin()
    for plugin_command in s:user_plugins
        execute plugin_command
    endfor
endfunction
