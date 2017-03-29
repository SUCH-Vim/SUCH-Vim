vim -Nu ~/.SUCH-Vim/tests/test_vimrc -c "PlugInstall | :q | :q" 
vim -Nu ~/.SUCH-Vim/tests/test_vimrc -c "Vader! tests/unittests/suchvim/dependencies/*" 
vim -Nu ~/.SUCH-Vim/tests/test_vimrc -c "Vader! tests/unittests/suchvim/user-plugin.vader" 
