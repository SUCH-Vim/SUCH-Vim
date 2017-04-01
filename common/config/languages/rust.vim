autocmd FileType rust noremap <buffer> <leader>f :RustFmt<cr>
autocmd FileType rust noremap <buffer> <leader>R :RustRun<cr>

let g:rustfmt_autosave = 1
" This is a little workaround to use Cargo to check syntax instead of rustc while
" awaiting for PR #132 on rust.vim to be merged. Credit goes to @estin.
let g:syntastic_rust_rustc_exe = 'cargo check'
let g:syntastic_rust_rustc_fname = ''
let g:syntastic_rust_rustc_args = '--'
let g:syntastic_rust_checkers = ['rustc']

" ----------------------------------------------------------------
"  Dependencies control
" ----------------------------------------------------------------

let dependencies = [ 'rustfmt' ]
autocmd FileType rust call SUCHVim_check_cargo_dependencies(dependencies)
