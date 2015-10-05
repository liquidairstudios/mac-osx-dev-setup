#!/usr/bin/env bash
# Apache License Version 2.0, January 2004, http://www.apache.org/licenses/LICENSE-2.0
# Copyright 2014 Svetlin Ralchev <svett@ralch.com>
# Github repository: http://github.com/svett/mac-osx-dev-setup

# installing homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

clone() {
  set +e
  git clone https://github.com/$1 $HOME/$2
  set -e
}

brew update

brew tap caskroom/versions
brew tap caskroom/fonts
brew tap pivotal/tap
brew tap universal-ctags/universal-ctags
brew tap git-duet/tap
brew tap kopischke/ctags
brew tap nviennot/tmate
brew tap neovim/neovim

# installing homebrew formulas
brew install tmux
brew install vcprompt
brew install wget
brew install p7zip
brew install git
brew install git-flow
brew install hg
brew install node
brew install go
brew install ruby
brew install chruby
brew reinstall python3
brew install python
brew install pyenv
brew install mono
brew install dart
brew install dartium
brew install coreutils
brew install docker
brew install docker-machine
brew install brew-cask
brew install pstree
brew install direnv
brew install hub
brew install packer
brew install ag
brew install ack
brew install eraphviz
brew install terraform
brew install nvim --HEAD --with-lua --with-python3
brew reinstall vim --with-lua --with-python3
brew reinstall macvim --with-lua --with-python3
brew install fish
brew install zsh
brew install awscli
brew install chruby
brew install fzf
brew install ctags-fishman --HEAD
brew install git-duet

brew cask install darteditor
brew cask install google-chrome
brew cask install kaleidoscope
brew cask install spotify
brew cask install vagrant
brew cask install firefox
brew cask install iterm2
brew cask install sublime-text
brew cask install virtualbox
brew cask install flux
brew cask install java
brew cask install mou
brew cask install teamviewer
brew cask install vlc
brew cask install alfred
brew cask install slack
brew cask install sublime-text3
brew cask install atom

clone luan/atom-config $HOME/.atom
gem install bundler

sudo pip3 install neovim
