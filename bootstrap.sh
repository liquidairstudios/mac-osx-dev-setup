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
clone tmux-plugins/tpm .tmux/plugins/tpm

# Configure atom
clone luan/atom-config .atom

# Configure vim
sudo pip3 install neovim

clone luan/vimfiles .vim

symlink_resource vimrc.local
symlink_resource vimrc.local.before
symlink_resource vimrc.local.plugins

$HOME/.vim/install

ln -s $HOME/.vim $HOME/.config/nvim
ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim

# Install and configure ruby
./bootstrap_gems.sh

# Install .NET
./bootstrap_dotnet.sh

# Replace plist
copy_plist org.pqrs.Karabiner.plist
copy_plist com.googlecode.iterm2.plist

mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
cp resources/themes/Hybrid.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
