#!/usr/bin/env sh

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

yarn global add $(cat "$DIR/packages" | sed '/^#/ d' | xargs)
