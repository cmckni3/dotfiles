#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  brew install php55 --with-fpm --without-snmp --with-mssql --with-postgresql --with-mysql --with-homebrew-openssl --with-imap
  brew install php55-mcrypt php55-yaml
  brew install php55-xdebug
  brew install php55-memcached php55-redis

  brew install composer phplint wp-cli

fi
