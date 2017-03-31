" ----------------------------------------------------------------
"  Include Basic
" ----------------------------------------------------------------

source ~/.SUCH-Vim/common/config/basic/practical.vim

" ----------------------------------------------------------------
"  Include Motions
" ----------------------------------------------------------------

source ~/.SUCH-Vim/common/config/motions/windows.vim
source ~/.SUCH-Vim/common/config/motions/cursor.vim

" ----------------------------------------------------------------
"  Include Languages
" ----------------------------------------------------------------

source ~/.SUCH-Vim/common/config/languages/python.vim
source ~/.SUCH-Vim/common/config/languages/go.vim
source ~/.SUCH-Vim/common/config/languages/javascript.vim
source ~/.SUCH-Vim/common/config/languages/css.vim
source ~/.SUCH-Vim/common/config/languages/html.vim
source ~/.SUCH-Vim/common/config/languages/json.vim
source ~/.SUCH-Vim/common/config/languages/c.vim
source ~/.SUCH-Vim/common/config/languages/latex.vim

" ----------------------------------------------------------------
"  Include Environment
" ----------------------------------------------------------------

source ~/.SUCH-Vim/common/config/environment/buffer.vim
source ~/.SUCH-Vim/common/config/environment/spell-checker.vim

call SUCHVim_execute_commands(g:remap_commands)
