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
ln -s $DOT_FILES/.rbenv ~/.rbenv

ln -s $DOT_FILES/.nvm ~/.nvm

# oh my zsh
ln -s $DOT_FILES/.oh-my-zsh ~/.oh-my-zsh
ln -s $DOT_FILES/zshrc ~/.zshrc

# tmux
ln -s $DOT_FILES/tmux.conf ~/.tmux.conf

# vim
ln -s $DOT_FILES/vimrc ~/.vimrc

chsh -s $ZSH
zsh
source $HOME/.zshrc

# Install ruby
rbenv install 1.9.3-p545
rbenv install 2.0.0-p481

rbenv global 1.9.3-p545

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Install homebrew
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

  # Sublime Text 3 preferences
  mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
  ln -s $DOT_FILES/Preferences.sublime-settings "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
fi

# Install nodejs
nvm install 0.10
nvm alias default 0.10
