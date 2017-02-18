nvim -Nu tests/test_vimrc -c "PlugInstall | :q | :q" 
nvim -Nu tests/test_vimrc -c "Vader ~/.SUCH-Vim/tests/suchvim/helpers/dependencies.vader" 
