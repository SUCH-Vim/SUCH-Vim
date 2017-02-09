call plug#begin('~/.vim/plugged')

" ----------------------------------------------------------------
"  Include common plugins
" ----------------------------------------------------------------

source ~/.SUCH-Vim/common/plugins/plugins.vim

" ----------------------------------------------------------------
"  Visual plugins
" ----------------------------------------------------------------

source ~/.SUCH-Vim/vim/plugins/visual/autocompletion.vim
source ~/.SUCH-Vim/vim/plugins/visual/helpers.vim

call plug#end()
