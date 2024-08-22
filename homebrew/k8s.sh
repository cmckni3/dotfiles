#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  FORMULAS=(
    helm
    # k9s dashboard cli
    k9s
    kubernetes-cli
  )

  echo 'Installing kubernetes formulae'

  brew install ${FORMULAS[@]}

  echo 'Cleaning up'

  brew cleanup

fi
