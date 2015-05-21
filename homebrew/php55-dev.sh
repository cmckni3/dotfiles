# Install PHP 5.5 for extension development
brew install php55 --with-thread-safety --with-debug --with-phpdbg --with-fpm --without-snmp --with-mssql --with-postgresql --with-mysql --with-homebrew-openssl --with-imap
brew install php55-mcrypt php55-pcntl php55-yaml
brew install php55-redis php55-xdebug --HEAD

# Profiling
brew install php55-mongo php55-xhprof --HEAD
brew install php55-xhgui
