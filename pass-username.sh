#!/bin/bash

set -e

QUERY=$1
PATH=:/opt/homebrew/bin/:$PATH

PINENTRY_USER_DATA=gui pass show $QUERY |  sed -n 's/user: \(.*\)/\1/p' | tr -d '\n' #
osascript -e 'display notification "Copied password to clipboard" with title "Unix pass"'

