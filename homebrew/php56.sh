#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  brew install php56 --with-fpm --without-snmp --with-mssql --with-postgresql --with-mysql --with-homebrew-openssl --with-imap
  brew install php56-mcrypt php56-yaml
  brew install php56-xdebug
  brew install php56-memcached php56-redis

fi
