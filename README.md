# Dotfiles

`Note: work in progress and setup script may not work 100% of the time.`

## Usage

* Clone repo

`Note: I clone my dotfiles into `~/dotfiles`. This is optional`

```bash
git clone https://github.com/cmckni3/dotfiles.git ~/dotfiles
```

* Run the setup script

```bash
sh setup.sh
```


## What's included

1. Installs [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
1. Installs [homebrew](http://brew.sh/) (Mac OS X only)
1. Taps and installs [homebrew](http://brew.sh/) and [homebrew-cask](https://github.com/caskroom/homebrew-cask) formulas on (Mac OS X only)
1. Global ignore config files for git and mercurial
1. IRB configuration file which adds some convenience methods when using IRB
1. tmux configuration file based on [Chris Hunt's tmux configuration](https://github.com/chrishunt/dot-files/blob/master/.tmux.conf)
1. Vim configuration file to enable line numbers and syntax highlighting
1. zsh configuration file. rbenv and nvm are also loaded
1. Sublime Text 3 user preferences

## TODO

1. More robust setup script
1. Add the rest of my common homebrew formulas and casks
1. Tests

