#!/usr/bin/env bash
# Apache License Version 2.0, January 2004, http://www.apache.org/licenses/LICENSE-2.0
# Copyright 2014 Svetlin Ralchev <svett@ralch.com>
# Github repository: http://github.com/svett/mac-osx-dev-setup

mkdir -p ~/Workspace/go
cp ../settings/.tmux.conf ~/.tmux.conf

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

~/.bash_it/install.sh

cp ../settings/aliases.bash ~/.bash_it/lib/aliases.bash

