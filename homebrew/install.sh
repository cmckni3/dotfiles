#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then
  echo 'Installing homebrew'
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

