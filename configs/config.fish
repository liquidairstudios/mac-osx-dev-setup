# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
eval (direnv hook fish)

set -x -g EDITOR 'vim'
set -x -g GIT_EDITOR 'vim'
set -x -g GIT_DUET_GLOBAL true
set -x -g GIT_DUET_ROTATE_AUTHOR 1
set -x -g JAVA_HOME (/usr/libexec/java_home -v 1.8) 
set -x -g GOPATH $HOME/workspace/go
set -x -g GOBIN $GOPATH/bin
set -x -g GOSRC $GOPATH/src
set -x -g PATH /usr/local/sbin $PATH $GOBIN

alias ls='ls -G'

