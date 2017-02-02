#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  brew install php53 --with-httpd24 --without-snmp --with-mssql --with-postgresql --with-mysql --with-homebrew-openssl --with-imap
  brew install php53-mcrypt php53-yaml
  brew install php53-xdebug
  brew install php53-memcached php53-redis

fi
