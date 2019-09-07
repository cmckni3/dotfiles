# Show timestamps for history
export HIST_STAMPS="yyyy-mm-dd"

source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh

if type git >/dev/null 2>&1; then
  antigen bundle git
  antigen bundle git-flow
fi

if type ruby >/dev/null 2>&1; then
  antigen bundle ruby
fi

if type knife >/dev/null 2>&1; then
  antigen bundle knife
fi

if type cap >/dev/null 2>&1; then
  antigen bundle capistrano
fi

# nvm
export NVM_LAZY_LOAD=true NVM_AUTO_USE=true
antigen bundle lukechilds/zsh-nvm

antigen bundle zsh-users/zsh-syntax-highlighting

# Custom aliases and functions
antigen bundle $HOME/dotfiles/zsh

antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply

POWERLEVEL9K_MODE='nerdfont-complete'

# settings
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_DATE_FORMAT='%D{%Y-%m-%d}'

# prompt segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh date time dir vcs rbenv aws newline context)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(battery)

export SVN_EDITOR=vim
export EDITOR=vim

# location to find Go packages
export GOPATH="$HOME/code/go"

export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

export ANSIBLE_HOSTS=~/ansible_hosts

# Force GPG passphrase on command line
export GPG_TTY=$(tty)
if [[ -n "$SSH_CONNECTION" ]] ;then
    export PINENTRY_USER_DATA="USE_CURSES=1"
fi

# Create the path from scratch so it doesn't get messed up when using tmux
export PATH=$ANDROID_PATH:$HOME/.fastlane/bin:$GOPATH/bin:/usr/local/heroku/bin:"$HOME/Library/Python/2.7/bin":"$HOME/ansible/bin":"$HOME/.rbenv/bin":./bin:"$HOME/bin":"$HOME/bin/mongo":"$HOME/bin/redis":./node_modules/.bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

[[ -s $HOME/.asdf/asdf.sh ]] && . $HOME/.asdf/asdf.sh

# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true

[ -s "$HOME/.jabba/jabba.sh" ] && source "$HOME/.jabba/jabba.sh"

