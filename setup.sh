#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ./.vimrc ~/.vimrc && \
vim +PluginInstall +qall

if [ $? -eq 0 ]; then
  echo "VimSCode was installed!"
  exit 0
else
  echo "ERROR: Please check the installation manual"
  exit -1
fi