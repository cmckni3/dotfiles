#!/usr/bin/env sh

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# JavaScript
ln -nfs "$DIR/jshintrc" ~/.jshintrc
ln -nfs "$DIR/eslintrc" ~/.eslintrc
