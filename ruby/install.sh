#!/usr/bin/env sh

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Ruby
ln -s "$DIR/gemrc" ~/.gemrc
ln -s "$DIR/irbrc" ~/.irbrc
ln -s "$DIR/rubocop.yml" ~/.rubocop.yml
