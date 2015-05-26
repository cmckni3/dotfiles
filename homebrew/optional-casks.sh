#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  CASKS=(
    airmail-beta
    android-studio
    atom
    base
    brackets
    caffeine
    charles
    chicken
    chromecast
    clamxav
    cloud
    filezilla
    forklift
    hockeyapp
    kaleidoscope
    mou
    mplayer-osx-extended
    oclint
    reveal
    sequel-pro
    spark-inspector
    testflight
    transmit
  )

  echo 'Installing optional casks...this may take awhile'

  brew cask install ${CASKS[@]}

  echo 'Cleaning up'

  brew cleanup
  brew cask cleanup

fi
