
#!/bin/bash

ruby-install ruby 2.1.7 --no-reinstall
chruby ruby-2.1.7

gem install bundler
gem install tmuxinator

symlink_resource pryrc 
