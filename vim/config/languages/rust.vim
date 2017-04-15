" This is a little workaround to use Cargo to check syntax instead of rustc while
" awaiting for PR #132 on rust.vim to be merged. Credit goes to @estin.
let g:syntastic_rust_rustc_exe = 'cargo check'
let g:syntastic_rust_rustc_fname = ''
let g:syntastic_rust_rustc_args = '--'
let g:syntastic_rust_checkers = ['rustc']
