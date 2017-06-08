#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Sublime Text 3 preferences
  DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
  SUBLIME_PACKAGE_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages"
  USER_PACKAGES_DIR="$SUBLIME_PACKAGE_DIR/User"
  echo 'Linking Sublime Text 3 Preferences'
  mkdir -p "$USER_PACKAGES_DIR/snippets"
  ln -nfs "$DIR/Preferences.sublime-settings" "$USER_PACKAGES_DIR"
  ln -nfs "$DIR/Package Control.sublime-settings" "$USER_PACKAGES_DIR"
  ln -nfs "$DIR/SublimeLinter.sublime-settings" "$USER_PACKAGES_DIR"
  ln -nfs "$DIR/Git.sublime-settings" "$USER_PACKAGES_DIR"
  ln -nfs "$DIR/Default (OSX).sublime-keymap" "$USER_PACKAGES_DIR"
  ln -nfs "$DIR/MySnippets.sublime-settings" "$USER_PACKAGES_DIR"
  ln -nfs "$DIR/snippets/phpunit.sublime-snippet" "$USER_PACKAGES_DIR/snippets"
fi
