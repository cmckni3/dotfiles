set -e

# Global ignore for git and mercurial
ln -s gitignore_global ~/.gitignore_global
ln -s hgignore_global ~/.hgignore_global

# Ruby
ln -s gemrc ~/.gemrc
ln -s irbrc ~/.irbrc
ln -s rbenv ~/.rbenv

ln -s nvm ~/.nvm

# oh my zsh
ln -s oh-my-zsh ~/.oh-my-zsh
ln -s zshrc ~/.zshrc

# tmux
ln -s tmux.conf ~/.tmux.conf

# vim
ln -s vimrc ~/.vimrc

# Install ruby
rbenv install 1.9.3-p545
rbenv install 2.0.0-p481

rbenv global 1.9.3-p545

# Install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Install nodejs
nvm install 0.10
nvm alias default 0.10

mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
ln -s Preferences.sublime-settings "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
