if [[ "$OSTYPE" == "darwin"* ]]; then
  # Sublime Text 3 preferences
  echo 'Linking Sublime Text 3 Preferences'
  mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
  ln -s Preferences.sublime-settings "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
fi

