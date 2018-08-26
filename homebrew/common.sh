#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  echo 'Installing common homebrew formulae'
  alias git='hub'

  # Homebrew taps
  TAPS=(
    caskroom/cask
    homebrew/cask-fonts
    caskroom/versions
    bripkens/homebrew-dock
  )

  # Homebrew formulas
  FORMULAS=(
    ack
    ag
    coreutils
    ctags
    curl
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
    dash
    # Previously, docker-toolbox was used until Docker for Mac became usable
    docker
    firefox-developer-edition
    font-fira-code
    font-hack
    google-chrome
    google-chrome-canary
    iterm2
    spectacle
    sourcetree
    sublime-text
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
