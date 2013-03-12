# command completion
fpath=(~/dotfiles/zsh/zsh-completions/src $fpath)
zstyle :compinstall filename '/Users/matt/.zshrc'
autoload -Uz compinit
compinit

# setup the prompt to use powerline
function _update_ps1()
{
	export PROMPT="$(~/dotfiles/zsh/powerline-zsh/powerline-zsh.py $?)"
}

precmd()
{
	_update_ps1
}

##
## Global Aliases
##
alias -g L="|less"

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

# verbose directory stack list
alias d='dirs -v'

# Lists the ten most used commands.
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"

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

source ~/.git-completion.bash
source ~/dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
