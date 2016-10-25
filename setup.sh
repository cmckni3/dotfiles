#!/usr/bin/env sh

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

sh "$DIR/homebrew/install.sh"
sh "$DIR/homebrew/common.sh"
sh "$DIR/sublime/install.sh"

echo 'Linking configuration files'

# emacs
mkdir -p ~/.emacs.d
ln -s "$DIR/emacs/init.el" ~/.emacs.d/init.el

# Global ignore for git and mercurial
ln -s "$DIR/gitignore_global" ~/.gitignore_global
ln -s "$DIR/hgignore_global" ~/.hgignore_global

# Ruby
ln -s "$DIR/gemrc" ~/.gemrc
ln -s "$DIR/irbrc" ~/.irbrc
ln -s "$DIR/rubocop.yml" ~/.rubocop.yml

# JavaScript
ln -s "$DIR/jshintrc" ~/.jshintrc

# Code directories
mkdir -p ~/Code/ruby/rails
mkdir -p ~/Code/js/node
mkdir -p ~/Code/ruby/ruby-motion
mkdir -p ~/Code/swift
mkdir -p ~/Code/objective-c

mkdir -p ~/Code/go/src
mkdir -p ~/Code/go/pkg
mkdir -p ~/Code/go/bin

# tmux
ln -s "$DIR/tmux.conf" ~/.tmux.conf

# vim
ln -s "$DIR/vimrc" ~/.vimrc

# editorconfig
ln -s "$DIR/editorconfig" ~/.editorconfig

ZSH=$(which zsh)

# Check for prerequisites
if [ -z "$ZSH" ]; then
  echo 'Please install zsh'
  echo 'yum install -y zsh on RHEL'
  echo 'apt-get install -y zsh on Ubuntu'
  exit
fi

echo 'Linking zshrc'
ln -s "$DIR/zshrc" ~/.zshrc

# Install antigen which will automatically bundle oh-my-zsh and other plugins
echo 'Installing antigen'
git clone https://github.com/zsh-users/antigen.git ~/.antigen

echo 'Changing shell....'
sudo echo '/usr/local/bin/zsh' >> /etc/shells && chsh -s $ZSH
echo 'Loading zsh'
zsh
source $HOME/.zshrc

# Install ruby
echo 'Installing ruby'
rbenv install 2.1.6
rbenv install 2.2.2

rbenv global 2.1.6

# Install nodejs
echo 'Installing nvm'
curl https://raw.githubusercontent.com/creationix/nvm/v0.23.0/install.sh | bash
echo 'Installing node.js'
nvm install 0.10
nvm alias default 0.10
