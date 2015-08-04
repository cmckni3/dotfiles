alias zshconfig="subl ~/.zshrc"
alias reload=". ~/.zshrc"
alias code='cd ~/Code'
alias tlog='tail -f ~/php_error_log'
alias ohmyzsh="subl ~/.oh-my-zsh"
alias nginxconf="subl /usr/local/etc/nginx"

# Docker
alias dc="docker-compose"
alias docker-cleani="docker images | grep '<none>' | awk '{print \$3}' | xargs docker rmi"

# Git
alias git=hub
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gittags="git tag | xargs -I@ git log --format=format:\"%ai @%n\" -1 @ | sort | awk '{print \$4}'"
alias gdes='git describe --tags'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias gfdiff='git diff --name-only'

# Bundler
alias be="bundle exec"

# Projects
alias cdrails="cd ~/Code/ruby/rails"
alias cdnode="cd ~/Code/js/node"
alias cdjs="cd ~/Code/js"
alias cdruby="cd ~/Code/ruby"
alias cdmotion="cd ~/Code/ruby/ruby-motion"
alias cdgo="cd ~/Code/go/src"
alias cdobjc="cd ~/Code/objective-c"
alias cdswift="cd ~/Code/swift"

alias wfc='when-files-change "clear && bundle exec rake spec"'

alias largestfiles="du -k -I Library ~/* | awk '\$1 > 500000' | sort -nr"
alias dds="find . -name '*.DS_Store' -type f -delete"
