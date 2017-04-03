# SUCH-Vim
#### A Super User's Configuration for Handling Vim
[![Build Status](https://travis-ci.org/nasim80/SUCH-Vim.svg?branch=master)](https://travis-ci.org/SUCH-Vim/SUCH-Vim)
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badges/)
[![GPL Licence](https://badges.frapsoft.com/os/gpl/gpl.svg?v=103)](https://opensource.org/licenses/GPL-3.0/)
# Goal
The goal is to have a stable, clean, intuitive configuration of vim.
To do that, we try to have the same key binding in each languages for similar features.

|Feature|Keybinding|
|---|---|
|Build|`<leader>b`|
|Run|`<leader>R`|
|Completions|auto|
|Rename|`<leader>r`|
|Go to definition|`<leader>g`|
|Show documentation|`<leader>d`|
|Auto formatting|on write|

We also developed a dependencies control so the user don't have to install manually the `npm`, `pip` and `cargo` packages required by our plugins' selection.
Those dependencies are installed automatically in `.vim/SUCH-Vim/dependencies/`
# Installation
You can develop in your cloned Git repository's directory and execute the ./install.sh in order to apply changes to your config. A backup of your last config will be created in the $HOME/.vimrc_old file.

# Languages
### Markdown
|Feature|Status|
|---|---|
|Folding|&#10004;|
|Preview|&#10004;|
|Auto formatting|&#10060;|
|Syntax checking|&#10060;|
### Python
We use `yapf` to check the syntax of your python project. It is automatically
installed for you but you still have to provide your own `~/.style.yapf` file to configure it.

|Feature|Status|
|---|---|
|Completions|&#10004;|
|Rename|&#10004;|
|Go to definition|&#10004;|
|Show documentation|&#10004;|
|Auto formatting|&#10004;|
|Syntax checking|&#10004;|

### Javascript
We use `eslint` to check the syntax of your javascript project. It is automatically
installed for you but you still have to provide your own `.eslintrc.json` file to configure it.

|Feature|Status|
|---|---|
|Completions|&#10004;|
|Rename|&#10004;|
|Go to definition|&#10004;|
|Show documentation|&#10004;|
|Auto formatting|&#10004;|
|Syntax checking|&#10004;|
### Html, Css, Json
|Language|Feature|Status|
|---|---|---|
|Html|Auto formatting|&#10004;|
|css|Auto formatting|&#10004;|
|json|Auto formatting|&#10004;|
### Go
In order to have all the features, you have to install gocode, godef, goimports, etc.
The simplest way to do that is within vim with *`:GoInstallBinaries`*.

|Feature|Status|
|---|---|
|Completions|&#10004;|
|Rename|&#10004;|
|Go to definition|&#10004;|
|Show documentation|&#10004;|
|Auto formatting|&#10004;|
|Syntax checking|&#10004;|
### C, C++ 
In order to have formatting features, you have to install *`astyle`* and *`clang-check`*. 
You can find them in your distribution packet manager.

Clang-Check uses Compilation database (https://clang.llvm.org/docs/JSONCompilationDatabase.html) in order to figure out specific build options for each file. You can generate those using CMake or Build EAR (bear) (for non-CMake project) that can be find in your distribution packet manager.

|Feature|Status|
|---|---|
|Completions|&#10004;|
|Rename|&#10060;|
|Go to definition|&#10060;|
|Show documentation|&#10060;|
|Auto formatting|&#10004;|
|Syntax checking|&#10004;|
### LaTeX
|Feature|Status|
|---|---|
|Completions|&#10004;|
|Rename|&#10060;|
|Go to definition|&#10060;|
|Show documentation|&#10060;|
|Auto formatting|&#10060;|
|Syntax checking|&#10004;|
|Build|&#10004;|
|Run|&#10004;|

You can format a paragraph by selecting it and use the `<leader>f`.
Ex: Put your cursor at the begining of the paragraph and do `*line number of paragraph*<leader>f`
### Rust
We use `rustfmt` to format your project and `cargo` itself to check the syntax. `rustfmt` is automatically
installed for you but you still have to provide your own `rustfmt.toml` file at the root of your project to configure it.
|Feature|Status|
|---|---|
|Build|&#10060;|
|Run|&#10004;|
|Completions|&#10004;|
|Rename|&#10060;|
|Go to definition|&#10060;|
|Show documentation|&#10060;|
|Auto formatting|&#10004;|

# Windows
Move to the right window:
`<Leader>wl`
`<Leader>w<Right>` 

Move to the left window:
`<Leader>wh`
`<Leader>w<Left>`

Move to the below window:
`<Leader>wj`
`<Leader>w<Down>`

Move to the above window:
`<Leader>wk`
`<Leader>w<Up>`

# Buffers 
Toggle nerdtree : *`<Leader>tt`*

Fuzzy search files : *`<Leader>ff`*

View opened buffers and open one of them : *`<Leader>bb(wait and type a single number)<Enter>`*

Go to buffer with number : *`<Leader>bg(enter a number)<Enter>`*

Delete buffer with number : *`<Leader>bd(enter a number)d`*

Create buffer : `<Leader>be (write the file name)<Enter>`

Next buffer : *`<Leader>bn`*

Previous buffer : *`<Leader>bp`*

# Motions
### Cursor
Jump to anywhere you want with minimal keystrokes, with just one key binding.

Search for a character with : *`<Leader>;{char}{label}`*.

Search for n characters with : *`<Leader>ss{char}{char}...{char}<Enter>`*.

You can also jump to a line with jk : *`<Leader>j{char}`* and  *`<Leader>k{char}`*.

# Configuration
You can define your own configuration in the file *~/.suchvimrc*.

Here's an example: 
```vimscript
" Remap leader
let mapleader = " "

" Define colorscheme and airline theme
autocmd VimEnter * colorscheme solarized
            \| :AirlineTheme solarized

" Add your own set of plugins
call SUCHVim_addPlugins(['altercation/vim-colors-solarized', 'othree/yajs.vim', 'nvie/vim-flake8'])`

" Add your plugins dependencies here if you want them to be installed automatically
autocmd FileType javascript call SUCHVim_check_npm_dependencies(['yajs'])
autocmd FileType python call SUCHVim_check_pip_executable_dependencies(['flake8'])
