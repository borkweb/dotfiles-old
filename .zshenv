export PATH="/usr/local/Cellar/subversion/1.7.8/bin/:$PATH"
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/bin/:$HOME/:$PATH
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export PATH="/usr/local/mysql/bin:$PATH"
export PATH=$HOME/pear/bin:$PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
export PATH="/usr/local/share/npm/lib:$PATH"
export PATH="/usr/local/share/npm/lib/node_modules:$PATH"
export PATH="/Users/matt/sdk/android-sdk-macosx/tools:$PATH"
export PATH="/Users/matt/sdk/android-sdk-macosx/platform-tools:$PATH"
export PATH="/Users/matt/git/doctorjs/bin:$PATH"
export EL4R_HOME="/Users/matt/.el4r"
export NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'
export TMUX_SERVER_COLOR=green
export EDITOR=vim
export SVN_EDITOR=vim
export TERM='screen-256color'

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# set shell to use vim bindings
bindkey -v

# enable zsh extended glob
setopt extended_glob

# enable ! history expansion
setopt bang_hist

# if the commandline starts with a whitespace, don't add it to history
setopt hist_ignore_space

# make cd push the old directory to the dirstack
setopt auto_pushd

# don't require the "cd" command to enter a directory
setopt auto_cd

# do not store duplicates in the stack
setopt pushd_ignore_dups

# do not print the direcotry stack after pushd or popd
setopt pushd_silent
