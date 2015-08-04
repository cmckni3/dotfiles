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

