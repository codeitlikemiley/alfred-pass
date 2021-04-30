#!/bin/bash

set -e

QUERY=$1
PATH=:/opt/homebrew/bin/:$PATH

PINENTRY_USER_DATA=gui pass show "$QUERY" | awk 'BEGIN{ORS=""} {print; exit}'
osascript -e 'display notification "Copied password to clipboard" with title "Unix pass"'
