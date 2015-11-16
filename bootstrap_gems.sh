
#!/bin/bash

source ./bootstrap_utils.sh

curl -sSL https://get.rvm.io | bash -s stable
ruby-install ruby 2.1.7 --no-reinstall
chruby ruby-2.1.7

gem install bundler
gem install pry
gem install tmuxinator
gem install rails
sudo gem install cocoapods

symlink_resource pryrc 
