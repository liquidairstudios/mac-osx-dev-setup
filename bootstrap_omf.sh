#!/bin/bash

# TODO: Ask the user which shell he want
# chsh -s /usr/local/bin/fish
OMF_CONFIG=$PWD/resources/omf CI=true fish <(curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install) || true

