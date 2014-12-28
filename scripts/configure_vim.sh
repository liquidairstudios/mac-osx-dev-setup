#!/usr/bin/env bash
# Apache License Version 2.0, January 2004, http://www.apache.org/licenses/LICENSE-2.0
# Copyright 2014 Svetlin Ralchev <svett@ralch.com>
# Github repository: http://github.com/svett/mac-osx-dev-setup

cp ../settings/.vimrc.bundles.local ~/.vimrc.bundles.local

curl http://j.mp/spf13-vim3 -L -o - | sh
