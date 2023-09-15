#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  CASKS=(
    android-studio
    caffeine
    charles
    google-chrome-canary
    kaleidoscope
    mou
    sequel-pro
    rectangle
    transmit
    zight
  )

  echo 'Installing optional casks...this may take awhile'

  brew install ${CASKS[@]}

  echo 'Cleaning up'

  brew cleanup

fi
