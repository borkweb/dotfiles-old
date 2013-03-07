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
export TERM='xterm-256color'

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# set shell to use vim bindings
bindkey -v

# command completion
zstyle :compinstall filename '/Users/matt/.zshrc'
autoload -Uz compinit
compinit

# setup the prompt to use powerline
function _update_ps1()
{
	export PROMPT="$(~/dotfiles/powerline-zsh/powerline-zsh.py $?)"
}

precmd()
{
	_update_ps1
}

##
## Utility
##
alias wacom='killall WacomTabletDriver;open "/Library/Application Support/Tablet/WacomTabletDriver.app"'
alias gsub='git submodule update --init --recursive'
alias gup='git pull upstream master;gsub'
alias gorigin='git push origin HEAD'
alias gpush='~/utility/gigaom-push.sh'
alias pcpush='~/utility/paidcontent-push.sh'
alias vi='vim'

##
## Searching & Navigation
##
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

## z command
. `brew --prefix`/etc/profile.d/z.sh

umask 002
