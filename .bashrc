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
export TERM=xterm-color
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
alias vi='vim'

##
## Git
##
alias gsub='git submodule update --init --recursive && git submodule --quiet foreach --recursive "git remote set-url --push origin no_push"'
alias gup='git pull upstream master;gsub'
alias gop='git pull origin master;gsub'
alias gorigin='git push origin HEAD'
alias gmatt='git push matt HEAD'
alias grz='git remote add zzz `git remote -v|grep origin|grep fetch|sed s/GigaOM/zbtirrell/|awk '"'"'{print $2}'"'"'`'
alias grm='git remote add matt `git remote -v|grep origin|grep fetch|sed s/GigaOM/borkweb/|awk '"'"'{print $2}'"'"'`'
alias gnop='git remote set-url origin --push no_push'
alias gnup='git remote set-url upstream --push no_push'

function gra {
	git remote add "$1" `git remote -v|grep origin|grep fetch|sed s/GigaOM/${2}/|awk '{print $2}'`
}

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

function _update_ps1() {
	export PS1="$(~/dotfiles/shell/powerline-shell/powerline-shell.py $?)"
}

export PROMPT_COMMAND="_update_ps1"

## z command
#. `brew --prefix`/etc/profile.d/z.sh

if [[ -f ~/local.sh ]]
then
	source ~/local.sh
fi

umask 002
