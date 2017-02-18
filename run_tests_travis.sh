ls -la
pwd
vim -u ~/.SUCH-Vim/tests/test_vimrc -c "PlugInstall | :q | :q" 
vim -u ~/.SUCH-Vim/tests/test_vimrc -c "PlugInstall | :q | :Vader! ~/.SUCH-Vim/tests/suchvim/helpers/dependencies.vader" 
