syntax enable
set tabstop=4 shiftwidth=4 expandtab
set clipboard^=unnamedplus
set ttimeoutlen=0
set nu
set relativenumber
set nowrap

" ----------------------------------------------------------------
"  UI Setup
" ----------------------------------------------------------------


let vim_command = "echo $TERM | grep term"
let term_support = system(vim_command)

if(term_support != '')
    set termguicolors
else
    set t_Co=256 
endif

set background=dark
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:Powerline_symbols = 'unicode'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1

" ----------------------------------------------------------------
"  For using Vader file
" ----------------------------------------------------------------

au BufRead,BufNewFile *.vader set filetype=vim

map <leader>H :call SUCHVim_show_help()<cr>
map <leader><leader> :call SUCHVim_toggle_help_filetype()<cr>

" ----------------------------------------------------------------
"  Snippets 
" ----------------------------------------------------------------

let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
