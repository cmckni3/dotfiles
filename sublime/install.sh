#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Sublime Text 3 preferences
  DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
  echo 'Linking Sublime Text 3 Preferences'
  mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
  ln -s "$DIR/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
  ln -s "$DIR/Package Control.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
fi

