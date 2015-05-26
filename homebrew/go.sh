#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  echo 'Installing go via homebrew'

  brew install go --cross-compile-all

  echo 'Cleaning up'

  brew cleanup

fi
