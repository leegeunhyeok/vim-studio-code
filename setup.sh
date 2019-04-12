#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

if [ $? -eq 0 ]; then
  echo `cp ./.vimrc ~/.vimrc`
  echo "VimSCode was installed!"
  exit 0
fi

echo "ERROR: Please check the installation manual"
exit -1