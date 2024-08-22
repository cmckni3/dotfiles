#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  echo 'Installing common homebrew formulae'
  alias git='hub'

  # Homebrew taps
  TAPS=(
    aws/tap
    hashicorp/tap
    heroku/brew
    homebrew/cask
    homebrew/cask-versions
    homebrew/core
    homebrew/services
    jzelinskie/faq
    linuxkit/linuxkit
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
    git-extras
    git-flow
    git-town
    gnu-sed
    gnu-tar
    htop-osx
    hub
    mono-libgdiplus
    nmap
    openssl
    pandoc
    pyenv
    pyenv-virtualenv
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
    zsh
  )

  # Homebrew casks
  CASKS=(
    alfred
    font-fira-code
    font-hack
    google-chrome
    iterm2
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

  brew install ${CASKS[@]}

  echo 'Cleaning up'

  brew cleanup -s

  echo 'Install Dash & Sublime licenses.'

fi
