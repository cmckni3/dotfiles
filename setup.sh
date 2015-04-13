set -e

cd `dirname $0`
DOT_FILES=`pwd`

sh homebrew/install.sh
sh homebrew/formula.sh
sh sublime-preferences.sh

echo 'Linking configuration files'

# Global ignore for git and mercurial
ln -s gitignore_global ~/.gitignore_global
ln -s hgignore_global ~/.hgignore_global

# Ruby
ln -s gemrc ~/.gemrc
ln -s irbrc ~/.irbrc

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
ln -s tmux.conf ~/.tmux.conf

# vim
ln -s vimrc ~/.vimrc

ZSH=$(which zsh)

# Check for prerequisites
if [ -z "$ZSH" ]; then
  echo 'Please install zsh'
  echo 'yum install -y zsh on RHEL'
  echo 'apt-get install -y zsh on Ubuntu'
  exit
fi

echo 'Linking zshrc'
ln -s zshrc ~/.zshrc

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
rbenv install 1.9.3-p551
rbenv install 2.0.0-p598
rbenv install 2.1.5

rbenv global 2.1.5

# Install nodejs
echo 'Installing nvm'
curl https://raw.githubusercontent.com/creationix/nvm/v0.23.0/install.sh | bash
echo 'Installing node.js'
nvm install 0.10
nvm alias default 0.10
