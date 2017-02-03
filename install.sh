[[ -d ~/.SUCH-Vim ]] || mkdir ~/.SUCH-Vim
if [ -f ~/.vimrc_old ]; then
	rm ~/.vimrc_old
fi
if [ -f ~/.vimrc ]; then
	cp -Lf ~/.vimrc ~/.vimrc_old
	rm ~/.vimrc
fi
rm -r ~/.SUCH-Vim/*
cp -r ./* ~/.SUCH-Vim
ln -s ~/.SUCH-Vim/vimrc.vim ~/.vimrc
