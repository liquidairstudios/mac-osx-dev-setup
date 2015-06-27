#!/usr/bin/env bash
# Apache License Version 2.0, January 2004, http://www.apache.org/licenses
# Copyright 2014 Svetlin Ralchev <svett@ralch.com>
# Github repository: http://github.com/svett/mac-osx-dev-setup

# variables
install_homebrew = "scripts/install_homebrew.sh"
install_nuget = "scripts/install_nuget.sh"
install_go_packages = "scripts/install_go_packages.sh"
install_nuget = "scripts/install_nuget.sh"

configure_bash_profile = "scripts/configure_bash_profile.sh"
configure_vim = "scripts/configure_vim.sh"
configure_git = "scripts/configure_git.sh"

# install homebrew and formulas
echo "Install Homebrew packages"
install_homebrew

# installing nuget for mono
echo "Install Nuget packages"
install_nuget

# installing go libraries
echo "Install GO packages"
install_go_packages

# configuring vim
echo "Configure VIM"
configure_vim

# configuring .bash_profile
echo "Configure BASH profile"
configure_bash_profile

# configure git
echo "Configure Git profile"
configure_git
