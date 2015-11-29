#!/usr/bin/env bash

source ./bootstrap_utils.sh

#xcode-select --install

# installing homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

brew_tap caskroom/versions
brew_tap caskroom/fonts
brew_tap pivotal/tap
brew_tap universal-ctags/universal-ctags
brew_tap git-duet/tap
brew_tap kopischke/ctags
brew_tap nviennot/tmate
brew_tap neovim/neovim

brew_upinstall git
brew_upinstall ag
brew_upinstall ack
brew_upinstall bash-completion
brew_upinstall direnv
brew_upinstall fasd
brew_upinstall fzf
brew_upinstall tig
brew_upinstall tmate
brew_upinstall tmux
brew_upinstall wget
brew_upinstall python
brew_upinstall python3
brew_upinstall node
brew_upinstall chruby
brew_upinstall git-duet
brew_upinstall universal-ctags --HEAD
brew_upinstall vim --with-lua
brew_upinstall neovim --HEAD
brew_upinstall macvim --with-lua

brew_install go --with-cc-common
brew_install rust
brew_install vcprompt
brew_install wget
brew_install p7zip
brew_install git-flow
brew_install hg
brew_install ruby
brew_install pyenv
brew_install scala
brew_install mono
brew_install dart
brew_install coreutils
brew_install docker
brew_install docker-machine
brew_install pstree
brew_install hub
brew_install packer
brew_install terraform
brew_install fish
brew_install zsh
brew_install awscli
brew_install brew-cask
brew_install leiningen
brew_install graphviz
brew_install htop
brew_install hugo
brew_install nmap
brew_install weechat
brew_install yajl
brew_install ipcalc

brew_cask_install karabiner
brew_cask_install darteditor
brew_cask_install google-chrome
brew_cask_install kaleidoscope
brew_cask_install spotify
brew_cask_install vagrant
brew_cask_install firefox
brew_cask_install iterm2-beta
brew_cask_install virtualbox
brew_cask_install flux
brew_cask_install java
brew_cask_install teamviewer
brew_cask_install vlc
brew_cask_install alfred
brew_cask_install slack
brew_cask_install atom
brew_cask_install font-inconsolata-dz-for-powerline
brew_cask_install tmuxinator-completion
