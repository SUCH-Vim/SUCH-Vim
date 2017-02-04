call plug#begin('~/.vim/plugged')

" ----------------------------------------------------------------
"  UI plugins
" ----------------------------------------------------------------

Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'

Plug 'vim-syntastic/syntastic'

Plug 'mkitt/tabline.vim'


" ----------------------------------------------------------------
"  Buffer plugins
" ----------------------------------------------------------------

Plug 'scrooloose/nerdtree'

Plug 'ctrlpvim/ctrlp.vim'

" ----------------------------------------------------------------
"  Motion plugins
" ----------------------------------------------------------------

Plug 'easymotion/vim-easymotion'

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
