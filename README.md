## Install [Homebrew](http://mxcl.github.com/homebrew/)
Homebrew is the key to getting rock and rolling on anything!

````
/usr/bin/ruby <(curl -fsSk https://raw.github.com/mxcl/homebrew/go)
````

### Stuff to Brew Install
These are the tools that I use all the time.  Brew install ALL THE THINGS!

````
brew install ack autojump ctags-exuberant fmdiff lessc node siege tmux
````

* ack
* autojump
* ctags-exuberant _(Used for .vim/bundle/tagbar)_
* fmdiff
* lessc
* node
* siege
* tmux

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
