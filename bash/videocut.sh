#!/usr/bin/env zsh

# https://stackoverflow.com/a/42827058

shopt -s expand_aliases
alias ll='ls -lGhF'

FILEIN="/Volumes/NICOKING/test/videos/en_cours/2025-09-08_09-12-13-ph--689f032f1b8da.mp4"
FILEOUT="$HOME/Desktop/2025-09-08_09-12-13-ph--689f032f1b8da.mp4"
# -y Overwrite output files without asking.
ffmpeg                 \
    -y                 \
    -ss 00:11:49       \
    -to 00:18:34       \
    -i "$FILEIN"       \
    -c copy "$FILEOUT"

open $FILEOUT
# mv $FILEOUT $FILEIN
