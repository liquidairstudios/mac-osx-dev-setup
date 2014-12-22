#!/bin/bash
# Author: Svetlin Ralchev <svett@ralch.com>
# Github repository: http://github.com/svett/mac-osx-dev-setup

cp ../settings/.vimrc.bundles.local ~/.vimrc.bundles.local

curl http://j.mp/spf13-vim3 -L -o - | sh
