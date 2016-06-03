#!/bin/bash
echo "setup dotfiles."

echo "======================================"

echo "install bundle"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm -rf ./install.sh

echo "setup vim"
echo "install .vimrc"
if [ -e "${HOME}/.vimrc" ]; then
	echo "\".vimrc\" is exist. skip install."
else
	ln -sf ~/.dotfiles/.vimrc ~/.vimrc
fi

echo "NeoBundleInstall"
vim +NeoBundleInstall +qall



