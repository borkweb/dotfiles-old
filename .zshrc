# command completion
#zstyle :compinstall filename '/Users/matt/.zshrc'
#autoload -Uz compinit
#compinit

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
