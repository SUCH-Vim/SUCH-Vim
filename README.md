# SUCH-Vim
A Super User's Configuration for Handling Vim
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
# Installation
You can develop in your cloned Git repository's directory and execute the ./install.sh in order to apply changes to your config. A backup of your last config will be created in the $HOME/.vimrc_old file.

The first time you open vim, you have to call Vim-Plug with *`:PlugInstall`* in order to install all the plugins.
# Languages
### Markdown
In order to have all the features, you have to install instant-markdown-d
*`npm -g install instant-markdown-d`*

|Feature|Status|
|---|---|
|Folding|&#10004;|
|Preview|&#10004;|
|Auto formatting|&#10060;|
|Syntax checking|&#10060;|
### Python
In order to have all the features, you have to install jedi, yapf and pylint.
*`pip install jedi`*, *`pip install yapf`* and *`pip install pylint`*

If you want to use neovim: `pip install neovim`

|Feature|Status|
|---|---|
|Completions|&#10004;|
|Rename|&#10004;|
|Go to definition|&#10004;|
|Show documentation|&#10004;|
|Auto formatting|&#10004;|
|Syntax checking|&#10004;|
### Javascript
In order to have all the features, you have to install tern and jslint.
*`npm -g install tern`* and *`npm -g install jshint`*

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
# Buffers 
Toggle nerdtree : *`<Leader>tt`*

Fuzzy search files : *`<Leader>ff`*
# Motions
### Cursor
Jump to anywhere you want with minimal keystrokes, with just one key binding.

Search for a character with : *`<Leader>;{char}{label}`*.

Search for n characters with : *`<Leader>ss{char}{char}...{char}<Enter>`*.

You can also jump to a line with jk : *`<Leader>j{char}`* and  *`<Leader>k{char}`*.
# Configuration
You can define your own configuration in the file *~/.suchvimrc*.
