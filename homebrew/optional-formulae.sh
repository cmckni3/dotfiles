#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  FORMULAS=(
    dart
    imagemagick
    neo4j
    qt
    r
    sqlite
  )

  echo 'Installing optional formulae...this may take awhile'

  brew install ${FORMULAS[@]}

  echo 'Cleaning up'

  brew cleanup

fi
