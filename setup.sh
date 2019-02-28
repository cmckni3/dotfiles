#!/usr/bin/env sh

set -e

# Check for prerequisites
type zsh >/dev/null 2>&1 || {
  echo 'Please install zsh';
  echo 'yum install -y zsh on RHEL';
  echo 'apt-get install -y zsh on Ubuntu';
  exit 1;
}

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ZSH=$(which zsh)

sh "$DIR/homebrew/install.sh"
sh "$DIR/homebrew/common.sh"
sh "$DIR/sublime/install.sh"

echo 'Linking configuration files'

# emacs
mkdir -p ~/.emacs.d
ln -nfs "$DIR/emacs/init.el" ~/.emacs.d/init.el

# Configure Git
sh "$DIR/git/install.sh"

# Configure Mercurial
sh "$DIR/hg/install.sh"

# Code directories
mkdir -p ~/code/ruby/rails
mkdir -p ~/code/js/node
mkdir -p ~/code/ruby/ruby-motion
mkdir -p ~/code/{work,objective-c,swift}

mkdir -p ~/code/go/{bin,pkg,src}

# tmux
ln -nfs "$DIR/tmux.conf" ~/.tmux.conf

# vim
ln -nfs "$DIR/vimrc" ~/.vimrc

# editorconfig
ln -nfs "$DIR/editorconfig" ~/.editorconfig

echo 'Linking zshrc'
ln -nfs "$DIR/zshrc" ~/.zshrc
ln -nfs "$DIR/zshenv" ~/.zshenv

# Install antigen which will automatically bundle oh-my-zsh and other plugins
echo 'Installing antigen'
git clone https://github.com/zsh-users/antigen.git ~/.antigen

if grep -Fxq "$ZSH" /etc/shells
then
  echo 'Skip inserting shell into /etc/shells'
else
  echo 'Modifying /etc/shells'
  echo "$ZSH" | sudo tee -a /etc/shells > /dev/null
fi

echo 'Changing shell....'
chsh -s $ZSH
echo 'Loading zsh'
zsh
source $HOME/.zshrc

# Install ruby
echo 'Installing ruby'
rbenv install 2.2.7
rbenv install 2.3.4

rbenv global 2.3.4

# Install nodejs
echo 'Installing nvm'
curl https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
echo 'Installing node.js'
nvm install 8 && nvm install 10
nvm alias default 8
