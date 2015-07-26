#!/usr/bin/env bash
# Apache License Version 2.0, January 2004, http://www.apache.org/licenses
# Copyright 2014 Svetlin Ralchev <svett@ralch.com>
# Github repository: http://github.com/svett/mac-osx-dev-setup

# Setup OSX
echo "Setup OSX"
source boostrap_osx.sh

# Setup bash profile
echo "Setup bash profile"

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
./$HOME/.bash_it/install.sh

mv $HOME/.bash_profile $HOME/.bash_profile.bak
ln -s $PWD/configs/bash_profile $HOME/.bash_profile
ln -s $PWD/aliases.bash $HOME/.bash_it/lib/aliases.bash

mkdir -p $HOME/.bash_it/themes/ralch
ln -s $PWD/themes/ralch.theme.bash $HOME/.bash_it/themes/ralch/ralch.theme.bash

ln -s ~/workspace/mac-osx-dev-setup/configs/tmux.conf $HOME/.tmux.conf
ln -s ~/workspace/mac-osx-dev-setup/configs/git-authors $HOME/.git-authors
ln -s ~/workspace/mac-osx-dev-setup/configs/gitconfig $HOME/.gitconfig

# Setup homebrew
# echo "Setup homebrew"
source bootstrap_homebrew.sh

# Setup tmux
echo "Setup tmux"
mv $HOME/.tmux $HOME/.tmux.bak
ln -s $PWD/configs/tmux.conf $HOME/.tmux.conf

# Setup VIM
echo "Setup vim"
git clone http://github.com/luan/vimfiles.git ~/.vim
~/.vim/install

mv $HOME/.vimrc.local $HOME/.vimrc.local
ln -s $PWD/configs/vimrc.local $HOME/.vimrc.local

mv $HOME/.vimrc.local.plugins $HOME/.vimrc.local.plugins.bak
ln -s $PWD/configs/vimrc.local.plugins $HOME/.vimrc.local.plugins
