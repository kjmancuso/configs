#!/bin/bash

TOOLS="git pyflakes tmux vim"

declare -A INST=()

for i in $TOOLS
do
    if type "$i" &> /dev/null ; then
        INST[$i]="True"
    else
        NEEDS="$NEEDS $i"
    fi
done

if [[ ${INST[git]+_} && ${INST[vim]+_} ]]
then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    curl https://raw.githubusercontent.com/kremlinkev/configs/master/vimrc -o ~/.vimrc
    vim +PluginInstall +qall
else
    echo "vim or git not installed, easy button:"
    echo "sudo apt-get install git-core vim"
    exit
fi

if [ $NEEDS ]
then
    echo "You want the following"
    echo "sudo apt-get -y install $NEEDS"
fi
