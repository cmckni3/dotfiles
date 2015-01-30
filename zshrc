# Show timestamps for history
export HIST_STAMPS="yyyy-mm-dd"

source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh

antigen bundle git
antigen bundle ruby
antigen bundle rails
antigen bundle knife
antigen bundle capistrano
antigen bundle zsh-users/zsh-syntax-highlighting

# Custom aliases and functions
antigen bundle $HOME/dotfiles/zsh/custom

antigen theme candy

antigen apply

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

