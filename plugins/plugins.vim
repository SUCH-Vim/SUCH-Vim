call plug#begin('~/.vim/plugged')

" ----------------------------------------------------------------
"  Environment plugins
" ----------------------------------------------------------------

source ~/.SUCH-Vim/plugins/environment/buffer.vim

" ----------------------------------------------------------------
"  Motion plugins
" ----------------------------------------------------------------

source ~/.SUCH-Vim/plugins/motions/cursor.vim

" ----------------------------------------------------------------
"  Visual plugins
" ----------------------------------------------------------------

source ~/.SUCH-Vim/plugins/visual/autocompletion.vim
source ~/.SUCH-Vim/plugins/visual/helpers.vim
source ~/.SUCH-Vim/plugins/visual/themes.vim

" ----------------------------------------------------------------
"  Languages plugins
" ----------------------------------------------------------------

source ~/.SUCH-Vim/plugins/languages/python.vim
source ~/.SUCH-Vim/plugins/languages/go.vim
source ~/.SUCH-Vim/plugins/languages/javascript.vim

call plug#end()
