#!/usr/bin/env bash
# Apache License Version 2.0, January 2004, http://www.apache.org/licenses/LICENSE-2.0
# Copyright 2014 Svetlin Ralchev <svett@ralch.com>
# Github repository: http://github.com/svett/mac-osx-dev-setup

# TO DO: create GOPATH folder
# TO DO: ask for git username and git password

cp ../settings/.bash_profile ~/.bash_profile

# configuring the git push policy
git config --global push.default matching

# refreshes the shell with the new settings
sh ~/.bash_profile

mkdir $MONO_GAC_PREFIX
