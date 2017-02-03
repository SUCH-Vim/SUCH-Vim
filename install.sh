# Install vim-plug if not already installed
if [ ! -f ~/.vim/autoload/plug.vim]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
# Create backup of the old vim config and the install new config
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
