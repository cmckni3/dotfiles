set -e

DOT_FILES=$HOME/dotfiles
ZSH=$(which zsh)

# Check for prerequisites
if [[ -z "$ZSH" ]]; then
  echo 'Please install zsh'
  exit
fi

# Global ignore for git and mercurial
ln -s $DOT_FILES/gitignore_global ~/.gitignore_global
ln -s $DOT_FILES/hgignore_global ~/.hgignore_global

# Ruby
ln -s $DOT_FILES/gemrc ~/.gemrc
ln -s $DOT_FILES/irbrc ~/.irbrc

# oh my zsh
ln -s $DOT_FILES/zshrc ~/.zshrc

# tmux
ln -s $DOT_FILES/tmux.conf ~/.tmux.conf

# vim
ln -s $DOT_FILES/vimrc ~/.vimrc

echo " Changing shell...."
sudo echo "/usr/local/bin/zsh" >> /etc/shells && chsh -s /usr/local/bin/zsh
chsh -s $ZSH
zsh
source $HOME/.zshrc

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Install homebrew
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

  # Sublime Text 3 preferences
  mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
  ln -s $DOT_FILES/Preferences.sublime-settings "$HOME/Library/Application Support/Sublime Text 3/Packages/User"

  sh $DOT_FILES/homebrew.sh
fi

# Install ruby
rbenv install 1.9.3-p545
rbenv install 2.0.0-p481
rbenv install 2.1.3

rbenv global 1.9.3-p545

# Install nodejs
nvm install 0.10
nvm alias default 0.10
