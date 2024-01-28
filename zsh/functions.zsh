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
  mkdir -p ~/.notes; code ~/.notes/"$1.md"
}
function um() {
  mdless ~/.notes/"$1.md"
}
function um-ls() {
  ls ~/.notes/
}

# weather
weather()
{
  locale=$1
  lang=${2:-${LANG%_*}}
  while [ "$#" -gt 0 ];
  do
    case $1 in
      -h* | --help*)
      echo "-------------------------"
        echo "    Terminal Weather"
      echo "-------------------------\n"
      echo "Command: weather"
      echo "or"
      echo "Command: weather LOCALE LANGUAGE(option)\n"
      echo "Default LANGUAGE: SYSYEM_LANGUAGE"
      echo "-------------------------\n"
      curl wttr.in/:help
      return
      ;;

      *)
      shift
      ;;
    esac
  done

  # change Paris to your default location
  curl -H "Accept-Language: $lang" wttr.in/$locale
}

function brew-clean() { brew list | grep $@ | xargs brew uninstall ;}

function cat-file-by-name() {
  filename=$1
  find . -name "$1" -type f -exec grep -Iq . {} \; -print | xargs awk 'FNR==1{print FILENAME ":" $0; }'
}
