#!/usr/bin/env bash
# Apache License Version 2.0, January 2004, http://www.apache.org/licenses/LICENSE-2.0
# Copyright 2014 Svetlin Ralchev <svett@ralch.com>
# Github repository: http://github.com/svett/mac-osx-dev-setup

# installing homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
brew install pyenv
brew install pylint
brew install mono
brew install dart
brew install dartium
brew install coreutils
brew install docker
brew install boot2docker
brew install brew-cask
brew install pstree
brew install direnv
brew install hub
brew install packer
brew install ag

# http://ntraft.com/installing-gdb-on-os-x-mavericks/
brew tap homebrew/dupes
brew install gdb

brew tap git-duet/tap
brew install git-duet

brew cask install darteditor
brew cask install google-chrome
brew cask install kaleidoscope
brew cask install spotify
brew cask install vagrant
brew cask install firefox
brew cask install iterm2
brew cask install macvim
brew cask install sublime-text
brew cask install virtualbox
brew cask install flux
brew cask install java
brew cask install mou
brew cask install teamviewer
brew cask install vlc
