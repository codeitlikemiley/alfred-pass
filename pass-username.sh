#!/bin/bash

set -e

QUERY=$1
PATH=:/opt/homebrew/bin/:$PATH

PINENTRY_USER_DATA=gui pass show $QUERY |  sed -n 's/user: \(.*\)/\1/p' | tr -d '\n' #pass show -c "$QUERY"
osascript -e 'display notification "Copied Username to clipboard" with title "Unix Username"'
