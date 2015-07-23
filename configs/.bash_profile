#!/usr/bin/env bash
# Apache License Version 2.0, January 2004, http://www.apache.org/licenses/LICENSE-2.0
# Copyright 2014 Svetlin Ralchev <svett@ralch.com>
# Github repository: http://github.com/svett/mac-osx-dev-setup

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export GOPATH=$HOME/Projects/Go
export PATH=$PATH:$GOPATH/bin
export MONO_GAC_PREFIX="/usr/local/gac"
export PS1="\u@\h:\w$ "
export GIT_EDITOR="subl --wait --new-window"
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Volumes/Macintosh-HD/Users/ralch/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

alias ls="ls -GFh"
