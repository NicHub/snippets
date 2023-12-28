#!/usr/bin/env zsh

# https://stackoverflow.com/a/42827058

shopt -s expand_aliases
alias ll='ls -lGhF'

FILEIN="$HOME/Desktop/dust/in.webm"
FILEOUT="$HOME/Desktop/dust/out.webm"
# -y Overwrite output files without asking.
ffmpeg                 \
    -y                 \
    -ss 00:08:37       \
    -to 00:09:37       \
    -i "$FILEIN"       \
    -c copy "$FILEOUT"

