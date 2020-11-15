#!/bin/bash

DOT_FILES=(.zshrc .tmux.conf .gitconfig .vimrc .vim)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done
