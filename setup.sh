#!/bin/bash

link_shizzle() {
	cd $1

	# if the file is a symlink, just toss it
	if [ -h "$2" ]
	then
		rm $2
	fi

	# if the file exists, rename it
	if [ -e "$2" ]
	then
		mv $2 $2.backup
	fi

	# symlink the desired file
	ln -s $3
}

cd ~/

if [ ! -d ~/bin ]
then
	mkdir ~/bin
fi

link_shizzle ~/    .ackrc               ~/dotfiles/.ackrc
link_shizzle ~/    .bash_prompt         ~/dotfiles/.bash_prompt
link_shizzle ~/    .bashrc              ~/dotfiles/.bashrc
link_shizzle ~/    .zshenv              ~/dotfiles/.zshenv
link_shizzle ~/    .zshrc               ~/dotfiles/.zshrc
link_shizzle ~/    .ctags               ~/dotfiles/.ctags
link_shizzle ~/    .inputrc             ~/dotfiles/.inputrc
link_shizzle ~/    .screenrc            ~/dotfiles/.screenrc
link_shizzle ~/    .vimrc               ~/dotfiles/.vimrc
link_shizzle ~/    .vim                 ~/dotfiles/.vim
link_shizzle ~/    .git-completion.bash ~/dotfiles/git/.git-completion.bash
link_shizzle ~/    .gitconfig           ~/dotfiles/git/.gitconfig
link_shizzle ~/    git-info.sh          ~/dotfiles/git/git-info.sh
link_shizzle ~/    .tmux.conf           ~/dotfiles/tmux/.tmux.conf
link_shizzle ~/bin tmuxgo               ~/dotfiles/tmux/tmuxgo
link_shizzle ~/bin tmuxlogin            ~/dotfiles/tmux/tmuxlogin

source ~/.bashrc
chsh -s /bin/zsh
