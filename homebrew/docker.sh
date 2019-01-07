#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  FORMULAS=(
    dock
  )

  echo 'Installing docker formulae'

  brew install ${FORMULAS[@]}

  echo 'Cleaning up'

  brew cleanup

fi
