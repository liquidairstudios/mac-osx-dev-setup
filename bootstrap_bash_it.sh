#!/bin/bash

source bootstrap_utils.sh

clone Bash-it/bash-it .bash_it

rm -rf $HOME/.bash_it/plugins/enabled/*
rm -rf $HOME/.bash_it/completion/enabled/*
rm -rf $HOME/.bash_it/aliases/enabled/*

symlink_resource bin
symlink_resource bash_profile
symlink_resource dir_colors 

symlink_bash_it_script aliases
symlink_bash_it_theme ralch

source $HOME/.bash_profile

bash_it_enable_plugin ruby 
bash_it_enable_plugin fasd 
bash_it_enable_plugin ssh 
bash_it_enable_plugin tmux 
bash_it_enable_plugin osx 
bash_it_enable_plugin battery 
bash_it_enable_plugin base 
bash_it_enable_plugin docker-machine 

bash_it_enable_alias vim
bash_it_enable_alias vagrant
bash_it_enable_alias git
bash_it_enable_alias rails
bash_it_enable_alias homebrew 
bash_it_enable_alias tmux 
bash_it_enable_alias general 
bash_it_enable_alias vagrant

bash_it_enable_completion brew 
bash_it_enable_completion defaults 
bash_it_enable_completion gem 
bash_it_enable_completion git 
bash_it_enable_completion gulp 
bash_it_enable_completion npm 
bash_it_enable_completion packer 
bash_it_enable_completion pip 
bash_it_enable_completion rake 
bash_it_enable_completion ssh 
bash_it_enable_completion tmux 
bash_it_enable_completion vagrant 
