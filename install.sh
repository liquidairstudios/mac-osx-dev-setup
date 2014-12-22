#!/bin/bash
# Author: Svetlin Ralchev <svett@ralch.com>
# Github repository: http://github.com/svett/mac-osx-dev-setup

# variables
install_homebrew = "scripts/install_homebrew.sh"
install_nuget = "scripts/install_nuget.sh"
install_go_packages = "scripts/install_go_packages.sh"
install_nodejs_packages = "scripts/install_nodejs_packages.sh"
install_python_libraries = "scripts/install_python_libraries.sh"
install_nuget = "scripts/install_nuget.sh"

configure_bash_profile = "scripts/configure_bash_profile.sh"
configure_vim = "scripts/configure_vim.sh"

# gain root priviliges
sudo -

# install homebrew and formulas
install_homebrew

# installing nuget for mono
install_nuget

# installing go libraries
install_go_packages

# installing node libraries
install_nodejs_packages

# installing python libraries
install_python_libraries

# installing nodejs libararies
install_nodejs_packages

# configuring vim
configure_vim

# configuring .bash_profile
configure_bash_profile

