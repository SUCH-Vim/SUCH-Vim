nvim -u ~/.SUCH-Vim/tests/test_vimrc -c "PlugInstall | :q | :q" 
nvim -u ~/.SUCH-Vim/tests/test_vimrc -c "Vader! tests/unittests/suchvim/dependencies/*" 
