#!/usr/bin/env bash

source bootstrap_utils.sh

# Setup OSX
echo "Setup OSX"
./bootstrap_osx.sh

# Setup homebrew
echo "Setup homebrew"

./bootstrap_homebrew.sh

# Setup bash profile
echo "Setup bash profile"

./bootstrap_bash_it.sh

# Setup Software 
echo "Configure Software"

# Configure git
symlink_resource gitconfig
symlink_resource git-authors

# Configure tmux
symlink_resource tmux.conf

# Configure atom
clone luan/atom-config .atom

# Configure vim
sudo pip3 install neovim

clone luan/vimfiles .vim

symlink_resource vimrc.local
symlink_resource vimrc.local.before
symlink_resource vimrc.local.plugins

$HOME/.vim/install

ln -s $HOME/.nvim $HOME/.vim
ln -s $HOME/.nvimrc $HOME/.vimrc

# Install and configure ruby
ruby-install ruby 2.1.7 --no-reinstall

chruby ruby-2.1.7
gem install bundler

symlink_resource pryrc 

# Replace plist
copy_plist org.pqrs.Karabiner.plist
copy_plist com.googlecode.iterm2.plist
