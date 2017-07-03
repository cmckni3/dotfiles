# Show timestamps for history
export HIST_STAMPS="yyyy-mm-dd"

source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh

antigen bundle git
antigen bundle git-flow
antigen bundle ruby
antigen bundle rails
antigen bundle knife
antigen bundle capistrano
antigen bundle zsh-users/zsh-syntax-highlighting

# Custom aliases and functions
antigen bundle $HOME/dotfiles/zsh

antigen theme candy

antigen apply

export SVN_EDITOR=vim
export EDITOR=vim

# location to find Go packages
export GOPATH="$HOME/code/go"

export ANSIBLE_HOSTS=~/ansible_hosts

# Create the path from scratch so it doesn't get messed up when using tmux
export PATH=$GOPATH/bin:/usr/local/heroku/bin:"$HOME/ansible/bin":"$HOME/.rbenv/bin":./bin:"$HOME/bin":"$HOME/bin/mongo":"$HOME/bin/redis":./node_modules/.bin:/usr/local/bin:/usr/local/sbin:"/usr/local/texlive/2015/bin/x86_64-darwin":/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

[[ -s $HOME/.asdf/asdf.sh ]] && . $HOME/.asdf/asdf.sh

# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true

[ -s "$HOME/.jabba/jabba.sh" ] && source "$HOME/.jabba/jabba.sh"
