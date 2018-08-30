#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  TAPS=(
    caskroom/cask
    caskroom/versions
  )

  CASKS=(
    android-studio
    caffeine
    charles
    cloudapp
    dash
    kaleidoscope
    mou
    sequel-pro
    transmit
  )

  echo 'Installing homebrew taps'

  brew tap ${TAPS[@]}

  echo 'Installing optional casks...this may take awhile'

  brew cask install ${CASKS[@]}

  echo 'Cleaning up'

  brew cleanup
  brew cask cleanup

fi
