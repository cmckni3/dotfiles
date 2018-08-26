# Fix to allow using "git"
# command to call hub commands
function git() {hub "$@"}

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

function mysql_fast_import() {
  if [ -z "$1" ] && [ -z "$2" ]; then
    echo 'usage: mysql_fast_import database_name mysql_args'
  else
    cat $1 | hasten | mysql $2
  fi
}

# Docker
docker-enter() {
  docker exec -it "$@" /bin/bash;
}

docker-health() {
  docker inspect --format "{{json .State.Health }}" "$@" | jq
}

# personal documentation pages
function mdless() {
  pandoc -s -f markdown -t man "$1" | groff -T utf8 -man | less
}
function um-edit() {
  mkdir -p ~/.notes; code "~/.notes/$1.md"
}
function um() {
  mdless ~/.notes/"$1.md"
}
function um-ls() {
  ls ~/.notes
}

function thinctl() {
  command=$1
  project_directory=`pwd | xargs basename`
  bundle exec thin $command -S /tmp/$project_directory-dev.sock -d --tag $project_directory -s 5 -P tmp/pids/thin.pid
}

function brew-clean() { brew list | grep $@ | xargs brew uninstall ;}
