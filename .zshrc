export PATH=/usr/local/php5/bin:$PATH
export PATH=$HOME/pear/bin:$PATH
export PATH=/usr/local/Cellar/vim/7.4.488/bin:$PATH
export PATH="/usr/local/Cellar/subversion/1.8.10_1/bin:$PATH"
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/bin:$HOME:$PATH
export PATH=$HOME/git/tribe-plugin-packager:$PATH
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"
export PATH="/usr/local/share/npm/lib:$PATH"
export PATH="/usr/local/share/npm/lib/node_modules:$PATH"
export PATH="/Users/matt/sdk/android-sdk-macosx/tools:$PATH"
export PATH="/Users/matt/sdk/android-sdk-macosx/platform-tools:$PATH"
export PATH="/Users/matt/git/doctorjs/bin:$PATH"
export PATH="/usr/local/Cellar/ruby/2.0.0-p195/bin:$PATH"
export EL4R_HOME="/Users/matt/.el4r"
export NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'
export TMUX_SERVER_COLOR=green
export EDITOR=vim
export SVN_EDITOR=vim
export TERM='screen-256color'
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
#export TERM=xterm-color

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# Set up docker environment variables
#eval "$(boot2docker shellinit 2> /dev/null)"

function ldocker {
	echo 'Setting Docker info to point at local'
	export DOCKER_HOST=tcp://192.168.59.103:2376
	export DOCKER_CERT_PATH=/Users/matt/.boot2docker/certs/boot2docker-vm
	export DOCKER_TLS_VERIFY=1
}

function jdocker {
	echo 'Setting Docker info to point at Joyent'
	export DOCKER_HOST=tcp://us-east-1.docker.joyent.com:2376
	export DOCKER_CERT_PATH=/Users/matt/.sdc/docker/moderntribe
	export DOCKER_TLS_VERIFY=1
}

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
. ~/dotfiles/powerline/powerline/bindings/zsh/powerline.zsh

# setup z
. `brew --prefix`/etc/profile.d/z.sh

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
alias cs='~/dotfiles/utility/codesniffer-toggle.sh'
alias selenium='java -jar ~/bin/selenium-server-standalone-2.45.0.jar'
alias gogo='cd ~/www/sites/gigaom/wp-content/themes/vip/gigaom4-child'
alias gopro='cd ~/www/sites/pro/application/content'
alias hipchat='node /Users/matt/git/jarvis/bin/hipchat/hipchat.js'

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
alias git=hub

function gupstream() {
	git branch --set-upstream-to=$1/$2 $2
}

# the gprune and grprune commands were harvested from http://devblog.springest.com/a-script-to-remove-old-git-branches/
alias gprune="git branch --merged master | grep -v 'master$' | xargs git branch -d"
function grprune() {
	echo "The following remote branches are fully merged into master and will be removed:"
	git branch -r --merged master | sed 's/ *matt\///' | grep -v 'master$'

	read -q "REPLY?Continue (y/n)? "
	if [[ $REPLY = "y" ]]
	then
		# Remove remote fully merged branches
		git branch -r --merged master | sed 's/ *matt\///' | grep -v 'master$' | xargs -I% git push matt :%

		echo "Done!"
	fi
}

# List all remotes in submodules sans remotes labeled as matt
alias grls='git submodule --quiet foreach --recursive "git remote -v"|grep -v push|grep -v matt'

# update all submodules to master
alias gsubup='git submodule --quiet foreach --recursive "git checkout master; git pull"'

# add a remote of $1, pointing to the $2 account on github
function gra {
	git remote add "$1" `git remote -v|grep origin|grep fetch|sed s/GigaOM/${2}/|awk '{print $2}'`
}

##
## Subversion
##
alias svnupdry='svn merge --dry-run -r BASE:HEAD .' 
alias dw="svn diff -x -w"
alias svimdiff='svn diff --diff-cmd ~/dotfiles/vimdiff-svn.sh'

alias composer="php ~/bin/composer.phar"

## WordPress CLI commands
alias wp-accounts="wp --url='accounts.local.gostage.it' --path='/Library/WebServer/Documents/sites/pro/application/wordpress/'"
alias wp-search="wp --url='search.local.gostage.it' --path='/Library/WebServer/Documents/sites/pro/application/wordpress/'"

## z command
. `brew --prefix`/etc/profile.d/z.sh

umask 002

source ~/.git-completion.zsh
source ~/dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# configuration for profile 'default':
chpwd_profile_default()
{
	[[ ${profile} == ${CHPWD_PROFILE} ]] && return 1
	print "chpwd(): Switching to profile: default"

	export GIT_AUTHOR_EMAIL="borkweb@gmail.com"
	export GIT_COMMITTER_EMAIL="borkweb@gmail.com"
	export GIT_AUTHOR_NAME="Matthew Batchelder"
	export GIT_COMMITTER_NAME="Matthew Batchelder"
}

# configuration for profile 'fun':
chpwd_profile_djb()
{
	[[ ${profile} == ${CHPWD_PROFILE} ]] && return 1
	print "chpwd(): Switching to profile: $profile"

	export GIT_AUTHOR_EMAIL="orv.dessrx@gmail.com"
	export GIT_COMMITTER_EMAIL="orv.dessrx@gmail.com"
	export GIT_AUTHOR_NAME="Orv Dessrx"
	export GIT_COMMITTER_NAME="Orv Dessrx"
}

#
# Thanks to: Michael Prokop. 
# More documentation: 
# http://git.grml.org/?p=grml-etc-core.git;f=etc/zsh/zshrc;hb=HEAD#l1120
#
CHPWD_PROFILE='default'
function chpwd_profiles() {
	local -x profile

	zstyle -s ":chpwd:profiles:${PWD}" profile profile || profile='default'
	if (( ${+functions[chpwd_profile_$profile]} )) ; then
		chpwd_profile_${profile}
	fi

	CHPWD_PROFILE="${profile}"
	return 0
}
chpwd_functions=( ${chpwd_functions} chpwd_profiles )

chpwd_profile_default # run DEFAULT profile automatically

zstyle ':chpwd:profiles:/Users/matt/git/dark-brotherhood(|/|/*)'   profile djb
