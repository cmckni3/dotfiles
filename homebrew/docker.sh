#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  FORMULAS=(
    boot2docker
    dock
    docker-compose
  )

  echo 'Installing docker formulae'

  brew install ${FORMULAS[@]}

  echo 'Cleaning up'

  brew cleanup

fi
