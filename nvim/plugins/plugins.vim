call plug#begin('~/.vim/plugged')

" ----------------------------------------------------------------
"  Include common plugins
" ----------------------------------------------------------------

source ~/.SUCH-Vim/common/plugins/plugins.vim

" -----------------------------------------------------------------
"  Visual plugins
" -----------------------------------------------------------------

source ~/.SUCH-Vim/nvim/plugins/visual/autocompletion.vim
source ~/.SUCH-Vim/nvim/plugins/visual/helpers.vim

" -----------------------------------------------------------------
"  Languages plugins
" -----------------------------------------------------------------

source ~/.SUCH-Vim/nvim/plugins/languages/go.vim
source ~/.SUCH-Vim/nvim/plugins/languages/javascript.vim
source ~/.SUCH-Vim/nvim/plugins/languages/c.vim

call plug#end()
