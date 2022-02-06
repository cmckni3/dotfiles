#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  FORMULAS=(
    dart
    elasticsearch
    ghostscript
    graphviz
    imagemagick
    mercurial
    mongodb-community
    mongodb-community-shell
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
