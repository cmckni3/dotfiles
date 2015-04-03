if [[ "$OSTYPE" == "darwin"* ]]; then
  echo 'Installing homebrew formulas'

  # Homebrew taps
  TAPS=(
    atlassian/tap
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
    atlassian-plugin-sdk
    bats
    boot2docker
    brew-cask
    composer
    coreutils
    ctags
    curl
    dart
    dnsmasq
    dock
    elasticsearch
    fig
    ghostscript
    git
    git-flow
    git-extras
    gnu-sed
    gnu-tar
    graphviz
    htop-osx
    hub
    imagemagick
    memcached
    mercurial
    mogenerator
    mongodb
    mysql
    neo4j
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
    qt
    r
    ragel
    rbenv
    rbenv-binstubs
    rbenv-ctags
    rbenv-default-gems
    rbenv-gem-rehash
    rbenv-gemset
    redis
    ruby-build
    redis
    scheme48
    sqlite
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
    airmail-beta
    alfred
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
    firefox
    forklift
    google-chrome
    google-chrome-canary
    hockeyapp
    iterm2
    kaleidoscope
    mou
    mplayer-osx-extended
    oclint
    reveal
    sequel-pro
    spark-inspector
    sourcetree
    sublime-text3
    testflight
    the-unarchiver
    transmit
    yemuzip
  )

  brew update

  brew tap ${TAPS[@]} && brew install ${FORMULAS[@]}

  brew cask install ${CASKS[@]}
  
  echo "Cleaning up"
  
  brew cleanup

  echo "Install Dash & Sublime licenses."

fi
