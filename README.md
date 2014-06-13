## Install [Homebrew](http://mxcl.github.com/homebrew/)
Homebrew is the key to getting rock and rolling on anything!

````
/usr/bin/ruby <(curl -fsSk https://raw.github.com/mxcl/homebrew/go)
````

### Stuff to Brew Install
These are the tools that I use all the time.  Brew install ALL THE THINGS!

````
brew install autojump ctags-exuberant hub fmdiff jslint node reattach-to-user-namespace rsyslog siege the_silver_searcher tmux zsh
````

* autojump
* ctags-exuberant _(Used for .vim/bundle/tagbar)_
* fmdiff
* hub
* jslint
* node
* reattach-to-user-namespace (enables pbcopy, chromedriver, etc from tmux)
* rsyslog
* siege
* the_silver_searcher
* tmux
* zsh

#### [Brew Cask](https://github.com/caskroom/homebrew-cask)

This allows you to brew install binaries!

```
brew tap caskroom/cask
brew install brew-cask
```

##### Some [QuickLook plugins](https://github.com/sindresorhus/quick-look-plugins)

```
brew cask install qlstephen qlmarkdown quicklook-csv qlprettypatch betterzipql
```

### Stuff to node install
Once node is installed, get these in place:

* grunt

## Vim

### Plugins

#### Powerline
This provides a sweet status bar.  Some [patched
fonts](https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts)
will be necessary.

## Other things that should be set up

### WP-CLI
[WordPress CLI](https://github.com/wp-cli/wp-cli) is awesome.

````
git clone --recursive git://github.com/wp-cli/wp-cli.git
cd wp-cli
sudo utils/dev-build
````

### CodeSniffer
This gives you the ability to sniff your code to ensure adherence to standards.

````
sudo pear install PHP_CodeSniffer
````
