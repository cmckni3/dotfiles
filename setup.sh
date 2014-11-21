set -e

cd `dirname $0`
DOT_FILES=`pwd`

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Install homebrew
  echo 'Installing homebrew'
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

  echo 'Installing homebrew formulas'
  sh $DOT_FILES/homebrew.sh

  # Sublime Text 3 preferences
  echo 'Linking Sublime Text 3 Preferences'
  mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
  ln -s $DOT_FILES/Preferences.sublime-settings "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
fi

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
  exit
fi

echo 'Linking zshrc'
ln -s $DOT_FILES/zshrc ~/.zshrc

# Install oh-my-zsh
echo 'Installing oh-my-zsh'
curl -L http://install.ohmyz.sh | sh

echo " Changing shell...."
sudo echo "/usr/local/bin/zsh" >> /etc/shells && chsh -s $ZSH
zsh
source $HOME/.zshrc

# Install ruby
rbenv install 1.9.3-p545
rbenv install 2.0.0-p481
rbenv install 2.1.3

rbenv global 1.9.3-p545

# Install nodejs
nvm install 0.10
nvm alias default 0.10

