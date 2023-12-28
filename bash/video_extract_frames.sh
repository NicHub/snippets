#!/usr/bin/env zsh

# https://superuser.com/a/1696985/508141

shopt -s expand_aliases
alias ll='ls -lGhF'


FILEIN="$HOME/Desktop/dust/in.webm"
FILEOUT="$HOME/Desktop/dust/%06d.bmp"

ffmpeg                 \
    -vsync 0           \
    -ss 00:08:37       \
    -to 00:09:37       \
    -i "$FILEIN"       \
    $FILEOUT
