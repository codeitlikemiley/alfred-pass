#!/bin/bash

set -e

QUERY=$1
PATH=/opt/homebrew/bin/:$PATH
PINENTRY_USER_DATA=gui pass generate "$QUERY" | tail -n 1 | perl -pe 's/\e\[[0-9;]*m//g'
osascript -e 'display notification "Copied New Password to clipboard" with title "New pass"'
