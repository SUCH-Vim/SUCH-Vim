call plug#begin('~/.vim/plugged')

" ----------------------------------------------------------------
"  Environment plugins
" ----------------------------------------------------------------

source ~/.SUCH-Vim/vim/plugins/environment/buffer.vim

" -----------------------------------------------------------------
"  Motion plugins
" -----------------------------------------------------------------

source ~/.SUCH-Vim/vim/plugins/motions/cursor.vim

" -----------------------------------------------------------------
"  Visual plugins
" -----------------------------------------------------------------

source ~/.SUCH-Vim/nvim/plugins/visual/autocompletion.vim
source ~/.SUCH-Vim/nvim/plugins/visual/helpers.vim
source ~/.SUCH-Vim/vim/plugins/visual/themes.vim

" -----------------------------------------------------------------
"  Languages pluginnv
" -----------------------------------------------------------------

source ~/.SUCH-Vim/vim/plugins/languages/python.vim
source ~/.SUCH-Vim/nvim/plugins/languages/go.vim
source ~/.SUCH-Vim/nvim/plugins/languages/javascript.vim

call plug#end()
