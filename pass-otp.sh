#!/bin/bash

set -e

QUERY=$1
PATH=/opt/homebrew/bin/:$PATH
# PASS
PINENTRY_USER_DATA=gui pass otp "$QUERY" | awk 'BEGIN{ORS=""} {print; exit}'
osascript -e 'display notification "Copied OTP key to clipboard" with title "OTP"'

