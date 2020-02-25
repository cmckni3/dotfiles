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
    spectacle
    transmit
  )

  echo 'Installing optional casks...this may take awhile'

  brew cask install ${CASKS[@]}

  echo 'Cleaning up'

  brew cleanup
  brew cask cleanup

fi
