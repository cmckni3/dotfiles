#!/usr/bin/env sh

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Ruby
ln -nfs "$DIR/gemrc" ~/.gemrc
ln -nfs "$DIR/irbrc" ~/.irbrc
ln -nfs "$DIR/rubocop.yml" ~/.rubocop.yml
