#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then
  echo 'Installing homebrew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew install hub
fi

