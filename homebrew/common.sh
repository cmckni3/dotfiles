#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  echo 'Installing common homebrew formulae'
  alias git='hub'

  # Homebrew taps
  TAPS=(
    homebrew/dupes
    homebrew/science
    homebrew/versions
    homebrew/php
    caskroom/cask
    caskroom/versions
  )

  # Homebrew formulas
  FORMULAS=(
    ack
    apple-gcc42
    bats
    brew-cask
    composer
    coreutils
    ctags
    curl
    dnsmasq
    dock
    docker-compose
    ghostscript
    git
    git-flow
    git-extras
    gnu-sed
    gnu-tar
    graphviz
    htop-osx
    hub
    mercurial
    mogenerator
    mysql
    nginx
    nmap
    objc-run
    openssl
    phantomjs
    phplint
    pianobar
    postgresql
    python
    python3
    rbenv
    rbenv-binstubs
    rbenv-ctags
    rbenv-default-gems
    rbenv-gemset
    ruby-build
    scheme48
    ssh-copy-id
    swaks
    the_silver_searcher
    tmux
    tree
    valgrind
    wget
    wp-cli
    xctool
    zsh
  )

  # Homebrew casks
  CASKS=(
    alfred
    dash
    dockertoolbox
    firefox
    google-chrome
    google-chrome-canary
    iterm2
    sourcetree
    sublime-text3
    the-unarchiver
    yemuzip
  )

  echo 'Updating homebrew'

  brew update

  echo 'Installing homebrew taps'

  brew tap ${TAPS[@]}

  echo 'Installing formulae'

  brew install ${FORMULAS[@]}

  echo 'Installing casks'

  brew cask install ${CASKS[@]}

  echo 'Cleaning up'

  brew cleanup
  brew cask cleanup

  echo 'Install Dash & Sublime licenses.'

fi
