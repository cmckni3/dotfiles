#!/usr/bin/env sh

unlink ~/.emacs.d/init.el
unlink ~/.gemrc
unlink ~/.gitignore_global
unlink ~/.hgignore_global
unlink ~/.irbrc
unlink ~/.eslintrc
unlink ~/.csscomb.json
unlink ~/.tmux.conf
unlink ~/.vimrc
unlink ~/.zshenv
unlink ~/.zshrc

unlink "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
unlink "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"
unlink "$HOME/Library/Application Support/Sublime Text 3/Packages/User/SublimeLinter.sublime-settings"
