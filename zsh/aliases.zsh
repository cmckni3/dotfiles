alias zshconfig="code ~/.zshrc"
alias reload=". ~/.zshrc"
alias tlog='tail -f ~/php_error_log'
alias ohmyzsh="code ~/.oh-my-zsh"
alias nginxconf="code /usr/local/etc/nginx"
alias sl='ls'
alias rsyncpr='rsync -avh --progress'
alias gem-nuke="gem list | cut -d' ' -f1 | xargs gem uninstall -aIx"
alias brewcc='rm -rf ~/Library/Caches/Homebrew/*'
alias find-port-usage='netstat -vanp tcp | grep'

# Docker
alias dc='docker-compose'
alias rock='rocker-compose'
alias docker-cleani="docker images | grep '<none>' | awk '{print \$3}' | xargs docker rmi"

alias docker-redis-data='docker volume create --name redis-data'
alias docker-redis='docker run -d --restart=always -p 6379:6379 -v redis-data:/data --name redis redis:3'
alias docker-mongo-data='docker volume create --name mongo-data-db && docker volume create --name mongo-data-config'
alias docker-mongo='docker run -d --restart=always -p 27017:27017 -v mongo-data-db:/data/db -v mongo-data-config:/data/configdb --name mongo mongo:3'
alias docker-elasticsearch-data='docker volume create --name elasticsearch-data'
alias docker-elasticsearch='docker run -d --restart=always -p 9200:9200 -v elasticsearch-data:/usr/share/elasticsearch/data --name elasticsearch elasticsearch:1.7'
alias docker-solr-data='docker volume create --name solr-data'
alias docker-solr='docker run -d --restart=always -p 8983:8983 -v solr-data:/opt/solr/server/solr/mycores --name solr solr:7'
alias docker-mysql-data='docker volume create --name mysql-data'
alias docker-mysql='docker run -d -e MYSQL_ROOT_PASSWORD=root --restart=always -p 3306:3306 -v mysql-data:/var/lib/mysql --name mysql mysql:5.6'
alias docker-pg-data='docker volume create --name pg-data'
alias docker-pg='docker run -d -e PGDATA=/data -e POSTGRES_PASSWORD=root -v pg-data:/data -p 5432:5432 --name postgres postgres:9'
alias docker-graphite='docker run -d \
 --name graphite \
 --restart=always \
 -p 8080:80 \
 -p 8125:8125/udp \
 -p 8126:8126 \
 hopsoft/graphite-statsd'

# Docker machine
alias docker-machine-default='docker-machine create --virtualbox-disk-size 20000 -d virtualbox default'

# Git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gtags="git tag | xargs -I@ git log --format=format:\"%ai @%n\" -1 @ | sort | awk '{print \$4}'"
alias gdes='git describe --tags'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias gfdiff='git diff --name-only'
alias ggrep='git log -S'
alias gfastclone='git clone --depth 20'
alias ginit="git init && git commit -m 'Initial commit' --allow-empty"

# VS Code
alias code-ext-export="code --list-extensions | sort > ~/dotfiles/vscode/extensions.txt"
alias code-ext-export-filter="code --list-extensions | grep -Ev '(nativescript|php|react|rust|twig)' | sort > ~/dotfiles/vscode/extensions.txt"
alias code-ext-export-ns="code --list-extensions | grep -E 'nativescript' | sort > ~/dotfiles/vscode/nativescript-extensions.txt"
alias code-ext-export-php="code --list-extensions | grep -E '(php|twig)' | sort > ~/dotfiles/vscode/php.txt"
alias code-ext-export-react-native="code --list-extensions | grep -E 'react-native' | sort > ~/dotfiles/vscode/react-native.txt"
alias code-ext-export-rust="code --list-extensions | grep -E 'rust' | sort > ~/dotfiles/vscode/rust-extensions.txt"

# R
alias rstudio='LD_LIBRARY_PATH=$(/usr/libexec/java_home)/jre/lib/server: open -a RStudio'

# Bundler
alias be="bundle exec"

# Projects
alias cdcode='cd ~/code'
alias cdrails="cd ~/code/ruby/rails"
alias cdnode="cd ~/code/js/node"
alias cdjs="cd ~/code/js"
alias cdruby="cd ~/code/ruby"
alias cdmotion="cd ~/code/ruby/ruby-motion"
alias cdphp="cd ~/code/php"
alias cdgo="cd ~/code/go/src"
alias cdobjc="cd ~/code/objective-c"
alias cdobjcios="cd ~/code/objective-c/ios"
alias cdswift="cd ~/code/swift"
alias cdswiftios="cd ~/code/swift/ios"
alias cdwork="cd ~/code/work"

alias wfc='when-files-change "clear && bundle exec rake spec"'

alias find-node-modules="find . -type d -name 'node_modules'"
alias largestfiles="du -k -I Library ~/* | awk '\$1 > 500000' | sort -nr"
alias dds="find . -name '*.DS_Store' -type f -delete"
alias clean-xcode-downloads="rm -rf ~/Library/Caches/com.apple.dt.Xcode/Downloads/*"
alias clean-xcode-simulators="rm -rf /Library/Developer/CoreSimulator/Profiles/Runtimes/*"
