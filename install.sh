[[ -d ~/.SUCH-Vim ]] || mkdir ~/.SUCH-Vim
cp -r ./* ~/.SUCH-Vim
if [ -f ~/.vimrc_old ]; then
	rm ~/.vimrc_old
fi
if [ -f ~/.vimrc ]; then
	cp -Lf ~/.vimrc ~/.vimrc_old
	rm ~/.vimrc
fi
ln -s ~/.SUCH-Vim/vimrc.vim ~/.vimrc
