# SUCH-Vim
A Super User's Configuration for Handling Vim

# Installation
You can develop in your cloned Git repository's directory and execute the ./install.sh in order to apply changes to your config. A backup of your last config will be created in the $HOME/.vimrc_old file.

The first time you open vim, you have to call Vim-Plug with *:PlugInstall* in order to install all the plugins.

### Python

In order to have all the features, you have to install jedi and pylint.
*pip install jedi* and *pip install pylint*

### Javascript

In order to have all the features, you have to install tern and jslint.
*npm -g install tern* and *npm -g install jslint*

### Go

In order to have all the features, you have to install gocode, godef, goimports, etc.
The simplest way to do that is within vim with *:GoInstallBinaries*.

# Motions

### Cursor

Jump to anywhere you want with minimal keystrokes, with just one key binding.

Search for a character with : *<Leader>;{char}{label}*.
Search for 2 characters with : *<Leader>l{char}{char}{label}*.
Search for n characters with : *<Leader>ss{char}{char}...{char}<Enter>*.

You can also jump to a line with jk : *<Leader>j{char}* and  *<Leader>k{char}*.

# Languages
|Language|Feature|Status|
|---|---|---|
|Python|Completions|&#10004;|
|Python|Rename|&#10004;|
|Python|Go to definition|&#10004;|
|Python|Show documentation|&#10004;|
|Python|Auto formatting|&#10060;|
|Go|Completions|&#10004;|
|Go|Rename|&#10004;|
|Go|Go to definition|&#10004;|
|Go|Show documentation|&#10004;|
|Go|Auto formatting|&#10004;|
|Javascript|Completions|&#10004;|
|Javascript|Rename|&#10004;|
|Javascript|Go to definition|&#10004;|
|Javascript|Show documentation|&#10004;|
|Javascript|Auto formatting|&#10004;|
