#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  FORMULAS=(
    dart
    elasticsearch
    imagemagick
    memcached
    neo4j
    qt
    r
    redis
    sqlite
  )

  echo 'Installing optional formulae...this may take awhile'

  brew install ${FORMULAS[@]}

  echo 'Cleaning up'

  brew cleanup

fi
