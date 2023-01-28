#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  FORMULAS=(
    dock
  )

  CASKS=(
    docker
  )

  echo 'Installing docker formulae'

  brew install ${FORMULAS[@]}

  echo 'Installing docker casks'

  brew install ${CASKS[@]}

  echo 'Cleaning up'

  brew cleanup

fi
