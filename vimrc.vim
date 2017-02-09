"----------------------------------------------------------------
"  Include Plugins
" ----------------------------------------------------------------

if has("nvim")
    source ~/.SUCH-Vim/nvim/plugins/plugins.vim
else
    source ~/.SUCH-Vim/vim/plugins/plugins.vim
endif

" ----------------------------------------------------------------
"  Init personal config
" ----------------------------------------------------------------

:if filereadable(expand("~/.suchvimrc"))
:	source ~/.suchvimrc
:endif

" ----------------------------------------------------------------
"  Include config
" ----------------------------------------------------------------

if has("nvim")
    source ~/.SUCH-Vim/nvim/config/config.vim
else
    source ~/.SUCH-Vim/vim/config/config.vim
endif
