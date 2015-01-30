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
# location to find Go packages
export GOPATH="$HOME/Code/go"

export ANSIBLE_HOSTS=~/ansible_hosts

export RUBYMOTION_ANDROID_NDK=/usr/local/Cellar/android-ndk/r10d
export RUBYMOTION_ANDROID_SDK=/usr/local/Cellar/android-sdk/24.0.1

# Create the path from scratch so it doesn't get messed up when using tmux
export PATH=/usr/local/heroku/bin:"$HOME/ansible/bin":"$HOME/.rbenv/bin":./bin:"$HOME/bin":/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

if which php-version > /dev/null; then
  source $(brew --prefix php-version)/php-version.sh && php-version 5
fi

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

