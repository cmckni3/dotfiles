alias zshconfig="subl ~/.zshrc"
alias reload=". ~/.zshrc"
alias code='cd ~/Code'
alias tlog='tail -f ~/php_error_log'
alias ohmyzsh="subl ~/.oh-my-zsh"
alias nginxconf="subl /usr/local/etc/nginx"
alias sl='ls'
alias rsyncpr='rsync -avh --progress'

# Docker
alias dc='docker-compose'
alias rock='rocker-compose'
alias docker-cleani="docker images | grep '<none>' | awk '{print \$3}' | xargs docker rmi"

alias docker-redis-data='docker run -d --name redis-data redis:3 /bin/false'
alias docker-redis='docker run -d --restart=always -p 6379:6379 --volumes-from redis-data --name redis redis:3'
alias docker-mongo-data='docker run -d --name mongo-data mongo:3 /bin/false'
alias docker-mongo='docker run -d --restart=always -p 27017:27017 --volumes-from mongo-data --name mongo mongo:3'
alias docker-elasticsearch-data='docker run -d --name elasticsearch-data elasticsearch:1.7 /bin/false'
alias docker-elasticsearch='docker run -d --restart=always -p 9200:9200 --volumes-from elasticsearch-data --name elasticsearch elasticsearch:1.7'
alias docker-mysql-data='docker run -d --name mysql-data mysql:5.6 /bin/false'
alias docker-mysql='docker run -d --restart=always -p 3306:3306 --volumes-from mysql-data --name mysql mysql:5.6'
alias docker-graphite='docker run -d \
 --name graphite \
 --restart=always \
 -p 8080:80 \
 -p 8125:8125/udp \
 -p 8126:8126 \
 hopsoft/graphite-statsd'

# Git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gittags="git tag | xargs -I@ git log --format=format:\"%ai @%n\" -1 @ | sort | awk '{print \$4}'"
alias gdes='git describe --tags'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias gfdiff='git diff --name-only'

alias rstudio='LD_LIBRARY_PATH=$(/usr/libexec/java_home)/jre/lib/server: open -a RStudio'

# Bundler
alias be="bundle exec"

# Projects
alias cdrails="cd ~/Code/ruby/rails"
alias cdnode="cd ~/Code/js/node"
alias cdjs="cd ~/Code/js"
alias cdruby="cd ~/Code/ruby"
alias cdmotion="cd ~/Code/ruby/ruby-motion"
alias cdphp="cd ~/Code/php"
alias cdgo="cd ~/Code/go/src"
alias cdobjc="cd ~/Code/objective-c"
alias cdobjcios="cd ~/Code/objective-c/ios"
alias cdswift="cd ~/Code/swift"
alias cdswiftios="cd ~/Code/swift/ios"

alias wfc='when-files-change "clear && bundle exec rake spec"'

alias largestfiles="du -k -I Library ~/* | awk '\$1 > 500000' | sort -nr"
alias dds="find . -name '*.DS_Store' -type f -delete"
