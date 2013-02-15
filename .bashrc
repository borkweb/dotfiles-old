export PATH=$HOME/bin/:$HOME/:$PATH
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export PATH="/usr/local/mysql/bin:$PATH"
export PATH=$HOME/local/bin:$PATH
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

export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTIGNORE="git push*"
shopt -s histappend
shopt -s cmdhist

##
## Utility
##
alias wacom='killall WacomTabletDriver;open "/Library/Application Support/Tablet/WacomTabletDriver.app"'
alias gsub='git submodule update --init --recursive'
alias gup='git pull upstream master;gsub'
alias gorigin='git push origin HEAD'
alias gpush='~/utility/gigaom-push.sh'
alias pcpush='~/utility/paidcontent-push.sh'

##
## Searching & Navigation
##
alias j='autojump'
alias pack='ack --pager="less -R"'

##
## Server stuff
##
alias mysql.server='/usr/local/mysql/support-files/mysql.server'
alias apache='sudo apachectl'

##
## Subversion
##
alias svnupdry='svn merge --dry-run -r BASE:HEAD .' 
alias dw="svn diff -x -w"
alias svimdiff='svn diff --diff-cmd ~/dotfiles/vimdiff-svn.sh'

##
## Git
##
alias gi='. /Users/$USER/git-info.sh'
source ~/.git-completion.bash

. ~/.bash_prompt

## z command
. `brew --prefix`/etc/profile.d/z.sh

if [[ -f ~/.local_bashrc ]]
then
	source ~/.local_bashrc
fi

umask 002
