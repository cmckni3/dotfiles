#!/usr/bin/env sh

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# JavaScript
ln -nfs "$DIR/hyper.js" ~/.hyper.js
