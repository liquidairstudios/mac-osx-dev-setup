#!/usr/bin/env bash

copy_plist() {
  name=$1
  cp $PWD/resources/plists/$name $HOME/Library/Preferences/$name
}

symlink_resource() {
  set +e
  for file in $@; do
    ln -s $PWD/resources/$file $HOME/.$file
  done
  set -e
}

clone() {
  set +e
  git clone https://github.com/$1 $HOME/$2
  set -e
}

brew_tap() {
  set +e
  brew tap $@
  set -e
}

brew_cask_install() {
  set +e
  brew cask install $@
  set -e
}

brew_install() {
  set +e
  brew install $@
  set -e
}

brew_install_shell() {
  brew_install $@
  echo $(which $@) >> /etc/shells
}

brew_upinstall() {
  brew install $@ || brew upgrade $@
}

bash_it_enable_plugin() {
  name=$1
  bash-it enable plugin $name
}

bash_it_enable_alias() {
  name=$1
  bash-it enable alias $name
}

bash_it_enable_completion() {
  name=$1
  bash-it enable completion $name
}

symlink_bash_it_script() {
  name=$1
  ln -s $PWD/resources/scripts/$name.bash $HOME/.bash_it/custom/$name.bash
}

symlink_bash_it_theme() {
  set +e
  name=$1
  mkdir -p $HOME/.bash_it/themes/$name
  ln -s $PWD/resources/themes/$name.theme.bash $HOME/.bash_it/themes/$name/$name.theme.bash
  set -e
}
