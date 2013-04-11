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
