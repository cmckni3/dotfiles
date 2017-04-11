#!/usr/bin/env sh

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# JavaScript
ln -s "$DIR/jshintrc" ~/.jshintrc
