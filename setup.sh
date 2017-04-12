#!/usr/bin/env sh

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

sh "$DIR/homebrew/install.sh"
sh "$DIR/homebrew/common.sh"
sh "$DIR/sublime/install.sh"

echo 'Linking configuration files'

# emacs
mkdir -p ~/.emacs.d
ln -nfs "$DIR/emacs/init.el" ~/.emacs.d/init.el

# Global ignore for git and mercurial
ln -nfs "$DIR/gitignore_global" ~/.gitignore_global
ln -nfs "$DIR/hgignore_global" ~/.hgignore_global

# Code directories
mkdir -p ~/code/ruby/rails
mkdir -p ~/code/js/node
mkdir -p ~/code/ruby/ruby-motion
mkdir -p ~/code/{objective-c,swift}

mkdir -p ~/code/go/{bin,pkg,src}

# tmux
ln -nfs "$DIR/tmux.conf" ~/.tmux.conf

# vim
ln -nfs "$DIR/vimrc" ~/.vimrc

# editorconfig
ln -nfs "$DIR/editorconfig" ~/.editorconfig

ZSH=$(which zsh)

# Check for prerequisites
if [ -z "$ZSH" ]; then
  echo 'Please install zsh'
  echo 'yum install -y zsh on RHEL'
  echo 'apt-get install -y zsh on Ubuntu'
  exit
fi

echo 'Linking zshrc'
ln -nfs "$DIR/zshrc" ~/.zshrc
ln -nfs "$DIR/zshenv" ~/.zshenv

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
