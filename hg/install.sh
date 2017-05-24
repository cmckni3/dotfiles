#!/usr/bin/env sh

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ln -nfs "$DIR/hgignore_global" ~/.hgignore_global
