#!/usr/bin/env zsh

# Obtain permissions in numerical format for use with chmod.

FILENAME=permissions.sh
stat -f '%A' $FILENAME

# chmod 644 $FILENAME
# xattr -rc .
