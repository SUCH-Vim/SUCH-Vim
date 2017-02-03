[[ -d ~/.SUCH-Vim ]] || mkdir ~/.SUCH-Vim
cp -r ./* ~/.SUCH-Vim
mv ~/.vimrc ~/.vimrc_old
ln -s ~/.SUCH-Vim/vimrc.vim ~/.vimrc
