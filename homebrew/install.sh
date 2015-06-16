#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then
  echo 'Installing homebrew'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install hub
fi

