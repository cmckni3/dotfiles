function changelog() {
  project_repo=`git config --get remote.origin.url | cut -d':' -f 2 | cut -d '.' -f 1`
  body=`git log $1...$2  --pretty=format:"1. %s%n\t* __[view commit](http://gitlab.immense.net/$project_repo/commit/%H)__%n" --no-merges`
  if [ ! -z $2 ]; then
    date=`git show -s --format="%cd" $2^0`
    echo "## $1 -> $2\n### $date\n$body"
  else
    date=`git show -s --format="%cd"`
    current_sha=`git show -s --format="%H"`
    echo "## $1 -> $current_sha\n### $date\n$body"
  fi
}

function mysql_fast_import() {
  if [ -z "$1" ] && [ -z "$2" ]; then
    echo 'usage: mysql_fast_import database_name mysql_args'
  else
    cat $1 | hasten | mysql $2
  fi
}

docker-enter() {
  boot2docker ssh '[ -f /var/lib/boot2docker/nsenter ] || docker run --rm -v /var/lib/boot2docker/:/target jpetazzo/nsenter'
  boot2docker ssh -t sudo /var/lib/boot2docker/docker-enter "$@"
}

function thinctl() {
  command=$1
  project_directory=`pwd | xargs basename`
  bundle exec thin $command -S /tmp/$project_directory-dev.sock -d --tag $project_directory -s 5 -P tmp/pids/thin.pid
}

