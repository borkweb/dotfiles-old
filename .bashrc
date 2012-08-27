export TMUX_SERVER_COLOR=green
export EDITOR=vi
export PATH=$HOME/bin/:$HOME/:$PATH
export PATH="/usr/local/mysql/bin:$PATH"
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/pear/bin:$PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"

export HISTCONTROL=ignoreboth
export HISTSIZE=10000
shopt -s histappend
shopt -s cmdhist

h() {
	if [ -z "$*" ]; then
		history
	else
		history | grep "$*"
	fi
}

[[ -f ~/.autojump/etc/profile.d/autojump.bash ]] && source ~/.autojump/etc/profile.d/autojump.bash

alias j='autojump'
alias svnupdry='svn merge --dry-run -r BASE:HEAD .' 
alias dw="svn diff -x -w"
alias pack='ack --pager="less -R"'
alias svimdiff='svn diff --diff-cmd svn-vimdiff'
alias mysql.server='/usr/local/mysql/support-files/mysql.server'
alias sshnhgo='ssh -i ~/.ssh/pem/aug2012.pem ec2-user@nh.gostage.it'
alias scpnhgo='ssh -i ~/.ssh/pem/aug2012.pem ec2-user@nh.gostage.it'
alias apache='sudo apachectl'
alias girl='php ~/cron/shell-bg.php'
alias gi='. /Users/$USER/git-info.sh'

source ~/.git-completion.bash

. ~/.bash_prompt

pfunc() { local regex=$1 ; shift ; ack --nogroup "function\s+&?$regex" "$@" ; }

umask 002
