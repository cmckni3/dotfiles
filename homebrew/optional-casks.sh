#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  CASKS=(
    android-studio
    caffeine
    charles
    cloudapp
    dash
    google-chrome-canary
    kaleidoscope
    mou
    sequel-pro
    rectangle
    transmit
  )

  echo 'Installing optional casks...this may take awhile'

  brew install ${CASKS[@]}

  echo 'Cleaning up'

  brew cleanup

fi
