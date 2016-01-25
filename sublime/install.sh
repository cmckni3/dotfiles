#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Sublime Text 3 preferences
  DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
  SUBLIME_PACKAGE_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages"
  USER_PACKAGES_DIR="$SUBLIME_PACKAGE_DIR/User"
  echo 'Linking Sublime Text 3 Preferences'
  mkdir -p "$USER_PACKAGES_DIR"
  ln -nfs "$DIR/Preferences.sublime-settings" "$USER_PACKAGES_DIR"
  ln -nfs "$DIR/Package Control.sublime-settings" "$USER_PACKAGES_DIR"
  ln -nfs "$DIR/SublimeLinter.sublime-settings" "$USER_PACKAGES_DIR"
  # Fixes Seti theme issues after updating to 10.0...
  # See https://github.com/ctf0/Seti_ST3/issues/207
  SETI_DIR="$SUBLIME_PACKAGE_DIR/Seti_UI/Scheme"
  mkdir -p "$SETI_DIR"
  cp -f "$DIR/Seti.tmTheme" "$SETI_DIR"
fi
