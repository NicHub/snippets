#!/usr/bin/env bash

# https://stackoverflow.com/a/42827058

shopt -s expand_aliases
alias ll='ls -lGhF'

FILEIN="infomaniak-bug-report.mov"
FILEOUT="infomaniak-bug-report.mp4"
ffmpeg                 \
    -y                 \
    -to 00:00:17       \
    -i "$FILEIN"       \
    -c copy "$FILEOUT"

    # -ss 00:07:21       \

