#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  FORMULAS=(
    dart
    elasticsearch
    ghostscript
    imagemagick
    neo4j
    qt
    r
    redis
    scheme48
    sqlite
    swaks
  )

  echo 'Installing optional formulae...this may take awhile'

  brew install ${FORMULAS[@]}

  echo 'Cleaning up'

  brew cleanup

fi
