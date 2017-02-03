"----------------------------------------------------------------
"  Include Plugins
" ----------------------------------------------------------------

source ~/.SUCH-Vim/basic/plugins.vim

" ----------------------------------------------------------------
"  Include Basic
" ----------------------------------------------------------------

source ~/.SUCH-Vim/basic/practical.vim
source ~/.SUCH-Vim/basic/windows.vim
source ~/.SUCH-Vim/basic/syntax.vim
source ~/.SUCH-Vim/basic/motion.vim

" ----------------------------------------------------------------
"  Include Languages
" ----------------------------------------------------------------

source ~/.SUCH-Vim/languages/python.vim
source ~/.SUCH-Vim/languages/go.vim
source ~/.SUCH-Vim/languages/javascript.vim

" ----------------------------------------------------------------
"  Init
" ----------------------------------------------------------------

autocmd VimEnter * NERDTree
