# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="candy"

source $HOME/dotfiles/zsh/aliases
source $HOME/dotfiles/zsh/functions

plugins=(git ruby rails knife capistrano)

source $ZSH/oh-my-zsh.sh

export SVN_EDITOR=vim
export EDITOR=vim

# Rails Environment
export RAILS_ENV=development
# Rack/Sinatra environment
export RACK_ENV=development

# Create the path from scratch so it doesn't get messed up when using tmux
export PATH=/usr/local/heroku/bin:"$HOME/ansible/bin":"$HOME/.rbenv/bin":"$HOME/bin":/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

eval "$(rbenv init -)"

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

