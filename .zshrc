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

__define_git_completion () {
eval "
    _git_$2_shortcut () {
        COMP_LINE=\"git $2\${COMP_LINE#$1}\"
        let COMP_POINT+=$((4+${#2}-${#1}))
        COMP_WORDS=(git $2 \"\${COMP_WORDS[@]:1}\")
        let COMP_CWORD+=1

        local cur words cword prev
        _get_comp_words_by_ref -n =: cur words cword prev
        _git_$2
    }
"
}

__git_shortcut () {
    type _git_$2_shortcut &>/dev/null || __define_git_completion $1 $2
    alias $1="git $2 $3"
    complete -o default -o nospace -F _git_$2_shortcut $1
}

__git_shortcut  co    checkout
__git_shortcut  st    status -s
__git_shortcut  ci    commit
__git_shortcut  lg    log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
__git_shortcut  undo  checkout --
