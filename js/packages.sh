#!/usr/bin/env sh

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

npm i -g $(cat "$DIR/packages" | sed '/^#/ d' | xargs)
