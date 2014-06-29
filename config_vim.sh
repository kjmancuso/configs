#!/bin/bash

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

curl https://raw.githubusercontent.com/kremlinkev/configs/master/vimrc -o ~/.vimrc

vim +PluginInstall +qall
