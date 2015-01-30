alias zshconfig="subl ~/.zshrc"
alias reload=". ~/.zshrc"
alias code='cd ~/Code'
alias tlog='tail -f ~/php_error_log'
alias ohmyzsh="subl ~/.oh-my-zsh"

# Git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gittags="git tag | xargs -I@ git log --format=format:\"%ai @%n\" -1 @ | sort | awk '{print \$4}'"
alias git=hub
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

# Bundler
alias bi="bundle install --binstubs"
alias be="bundle exec"

alias gorails="cd ~/Code/ruby/rails"
alias nginxstart="sudo launchctl load /Library/LaunchAgents/homebrew.mxcl.nginx.plist"
alias nginxstop="sudo launchctl unload /Library/LaunchAgents/homebrew.mxcl.nginx.plist"
alias fpmstart="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.php53.plist"
alias fpmstop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.php53.plist"
alias dnsstart="sudo launchctl load /Library/LaunchAgents/homebrew.mxcl.dnsmasq.plist"
alias dnsstop="sudo launchctl unload /Library/LaunchAgents/homebrew.mxcl.dnsmasq.plist"

alias wfc='when-files-change "clear && bundle exec rake spec"'

alias largestfiles="du -k -I Library ~/* | awk '\$1 > 500000' | sort -nr"
alias dds="find . -name '*.DS_Store' -type f -delete"
