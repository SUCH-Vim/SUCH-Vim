" ----------------------------------------------------------------
"  Init personal config
" ----------------------------------------------------------------

source ~/.SUCH-Vim/suchvim/user-plugins.vim

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
call SUCHVim_loadUserPlugin()
call plug#end()

" ----------------------------------------------------------------
"  Include config
" ----------------------------------------------------------------

if has("nvim")
    source ~/.SUCH-Vim/nvim/config/config.vim
else
    source ~/.SUCH-Vim/vim/config/config.vim
endif
