set -e

cd `dirname $0`
DOT_FILES=`pwd`

sh $DOT_FILES/homebrew/install.sh
sh $DOT_FILES/homebrew/formula.sh
sh $DOT_FILES/sublime-preferences.sh

echo 'Linking configuration files'

# Global ignore for git and mercurial
ln -s $DOT_FILES/gitignore_global ~/.gitignore_global
ln -s $DOT_FILES/hgignore_global ~/.hgignore_global

# Ruby
ln -s $DOT_FILES/gemrc ~/.gemrc
ln -s $DOT_FILES/irbrc ~/.irbrc

# tmux
ln -s $DOT_FILES/tmux.conf ~/.tmux.conf

# vim
ln -s $DOT_FILES/vimrc ~/.vimrc

ZSH=$(which zsh)

# Check for prerequisites
if [ -z "$ZSH" ]; then
  echo 'Please install zsh'
  echo 'yum install -y zsh on RHEL'
  echo 'apt-get install -y zsh on Ubuntu'
  exit
fi

echo 'Linking zshrc'
ln -s $DOT_FILES/zshrc ~/.zshrc

# Install oh-my-zsh
echo 'Installing oh-my-zsh'
curl -L http://install.ohmyz.sh | sh

echo 'Changing shell....'
sudo echo '/usr/local/bin/zsh' >> /etc/shells && chsh -s $ZSH
echo 'Loading zsh'
zsh
source $HOME/.zshrc

# Install ruby
rbenv install 1.9.3-p551
rbenv install 2.0.0-p598
rbenv install 2.1.5

rbenv global 2.1.5

# Install nodejs
nvm install 0.10
nvm alias default 0.10
