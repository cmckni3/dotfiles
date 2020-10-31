# Dotfiles

[![License](https://img.shields.io/github/license/cmckni3/dotfiles.svg)](https://github.com/cmckni3/dotfiles/blob/master/MIT-LICENSE)

`Note: work in progress and setup script may not work 100% of the time.`

## Colors and fonts

- VS Code: [Dark+ Mono](https://github.com/cmckni3/dark-plus-mono)
- iterm2: [The Hulk](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/The%20Hulk.itermcolors)
- font: [Dank Mono](https://dank.sh)
- zsh prompt: [candy](https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/candy.zsh-theme)

## Usage

* Clone repo

    ~~~ sh
    git clone https://github.com/cmckni3/dotfiles.git ~/dotfiles
    ~~~

  **Note**: I clone my dotfiles into `~/dotfiles`. This is optional.

* Run the setup script

    ~~~ sh
    sh setup.sh
    ~~~

## Updating

* Update the dotfiles repo

    ~~~ sh
    cd dotfiles && git pull
    ~~~

* Update antigen

    ~~~ sh
    antigen selfupdate
    ~~~

* Update antigen plugins
    ~~~ sh
    antigen update
    ~~~

### Making Local Customizations

You can make local customizations for some programs by editing these files:

* `vim` : `~/.vimrc_local`
* `emacs` : `~/.emacs_local`
* `zsh` : `~/.zshrc_local_before` run before `.zshrc`
* `zsh` : `~/.zshrc_local_after` run after `.zshrc`
* `git` : `~/.gitconfig_local`
* `hg` : `~/.hgrc_local`
* `tmux` : `~/.tmux_local.conf`

## What's included

1. Installs [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
2. Installs [homebrew](http://brew.sh/) (Mac OS X only)
3. Taps and installs [homebrew](http://brew.sh/) and [homebrew-cask](https://github.com/caskroom/homebrew-cask) formulas (Mac OS X only)
4. Global ignore config files for git and mercurial
5. IRB configuration file which adds some convenience methods when using IRB
6. tmux configuration file based on [Chris Hunt's tmux configuration](https://github.com/chrishunt/dot-files/blob/master/.tmux.conf)
7. Vim configuration file to enable line numbers and syntax highlighting
8. zsh configuration file. rbenv and nvm are also loaded
9. Sublime Text 3 user preferences

## TODO

1. More robust setup script
1. Add the rest of my common homebrew formulas and casks
1. Tests
