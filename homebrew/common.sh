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
    bripkens/homebrew-dock
  )

  # Homebrew formulas
  FORMULAS=(
    ack
    bats
    brew-cask
    coreutils
    ctags
    curl
    dnsmasq
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
    mysql
    nginx
    nmap
    objc-run
    openssl
    phantomjs
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
    ssh-copy-id
    the_silver_searcher
    tmux
    tree
    valgrind
    wget
    xctool
    zsh
  )

  # Homebrew casks
  CASKS=(
    alfred
    dash
    # Previously, docker-toolbox was used until Docker for Mac became usable
    docker
    firefox
    google-chrome
    google-chrome-canary
    iterm2
    sourcetree
    sublime-text
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
