# Homebrew taps
TAPS=(
  atlassian/tap
  homebrew/dupes
  homebrew/science
  homebrew/versions
  josegonzalez/php
  # brew-cask
  caskroom/cask
  caskroom/versions
)

# Homebrew formulas
FORMULAS=(
  ack
  apple-gcc42
  boot2docker
  brew-cask
  caskroom/cask/brew-cask
  coreutils
  dock
  git-flow
  git-extras
  htop-osx
  hub
  mercurial
  mogenerator
  mongodb
  mysql
  nginx
  openssl
  phantomjs
  php53 php53-mcrypt php53-memcached php53-pcntl php53-redis php53-xdebug php53-yaml
  postgresql
  python
  rbenv
  rbenv-binstubs
  rbenv-ctags
  rbenv-default-gems
  rbenv-gem-rehash
  rbenv-gemset
  ruby-build
  redis
  sqlite
  tmux
  wget
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
  chromecast
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

brew cask install ${CASKS[@]} && brew cask alfred link

echo "Install Dash & Sublime licenses."

brew cleanup
