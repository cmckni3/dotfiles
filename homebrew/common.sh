#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  echo 'Installing common homebrew formulae'
  alias git='hub'

  # Homebrew taps
  TAPS=(
    aws/tap
    bripkens/dock
    giginet/toybox
    heroku/brew
    homebrew/cask
    homebrew/cask-fonts
    homebrew/cask-versions
    homebrew/core
    homebrew/services
    jzelinskie/faq
    microsoft/msodbcsql
    mongodb/brew
  )

  # Homebrew formulas
  FORMULAS=(
    ack
    ag
    coreutils
    ctags
    curl
    desk
    git
    git-flow
    git-extras
    gnu-sed
    gnu-tar
    graphviz
    htop-osx
    hub
    jabba
    mercurial
    mogenerator
    nmap
    openssl
    pandoc
    rbenv
    rbenv-binstubs
    rbenv-ctags
    rbenv-default-gems
    rbenv-gemset
    ruby-build
    ssh-copy-id
    tmux
    tree
    watchman
    wget
    xctool
    zsh
  )

  # Homebrew casks
  CASKS=(
    alfred
    docker
    font-fira-code
    font-hack
    google-chrome
    iterm2
    spectacle
    sourcetree
    visual-studio-code
    the-unarchiver
    yemuzip
  )

  echo 'Updating homebrew'

  brew update

  echo 'Installing homebrew taps'

  for tap in ${TAPS[@]}; do
    brew tap "${tap}"
  done

  echo 'Installing formulae'

  brew install ${FORMULAS[@]}

  echo 'Installing casks'

  brew cask install ${CASKS[@]}

  echo 'Cleaning up'

  brew cleanup -s

  echo 'Install Dash & Sublime licenses.'

fi
