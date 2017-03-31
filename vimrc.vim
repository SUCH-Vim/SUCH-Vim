" ----------------------------------------------------------------
"  Include suchvim scripts
" ----------------------------------------------------------------

source ~/.SUCH-Vim/suchvim/suchvim.vim

" ----------------------------------------------------------------
"  Init personal config
" ----------------------------------------------------------------

if filereadable(expand("~/.suchvimrc"))
    source ~/.suchvimrc
endif

"----------------------------------------------------------------
"  Include Plugins
" ----------------------------------------------------------------

call plug#begin('~/.vim/plugged')
if has("nvim")
    source ~/.SUCH-Vim/nvim/plugins/plugins.vim
else
    source ~/.SUCH-Vim/vim/plugins/plugins.vim
endif

let plugins_commands = SUCHVim_getUserPlugins()
call SUCHVim_execute_commands(plugins_commands)

call plug#end()

" ----------------------------------------------------------------
"  Include config
" ----------------------------------------------------------------

if has("nvim")
    source ~/.SUCH-Vim/nvim/config/config.vim
else
    source ~/.SUCH-Vim/vim/config/config.vim
endif
