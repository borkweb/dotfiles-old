source ~/borkweb-shell/.psu.sh

export EDITOR=vi
export PATH=$HOME/bin/:$HOME/:$PATH
export PATH=$HOME/local/bin:$PATH

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

alias svnupdry='svn merge --dry-run -r BASE:HEAD .' 
alias dw="svn diff -x -w"
alias pack='ack --pager="less -R"'

umask 002
