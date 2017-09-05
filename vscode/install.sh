#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Visual Studio Code preferences
  DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
  VSCODE_PACKAGE_DIR="$HOME/Library/Application Support/Code"
  USER_PACKAGES_DIR="$VSCODE_PACKAGE_DIR/User"
  echo 'Linking Visual Studio Code Preferences'
  mkdir -p "$USER_PACKAGES_DIR/snippets"
  ln -nfs "$DIR/settings.json" "$USER_PACKAGES_DIR"

  CODE_INSTALLED=true
  type code >/dev/null 2>&1 || { echo 'Visual Studio Code not installed. Skip installing extensions'; CODE_INSTALLED=false; }

  if $CODE_INSTALLED; then
    exts=$(cat "$DIR/extensions.txt")
    for ext in $exts; do
      echo "Installing $ext"
      code --install-extension "$ext"
    done
  fi
fi
