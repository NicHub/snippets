#!/usr/bin/env bash

cd /Users/nico/erx-s3/erx-technical-documentation/13-DOC-ARA

find `pwd` -type f -iname "*.pdf"

find `pwd` -type f \( -name "*conflicted copy*" \) -exec md5sum {} \;;

find `pwd` -type f \( -iname "*.png" -or -iname "*.jp*g" \) -exec md5sum {} \;;

find `pwd` -type f -iname "*.png" -or -iname "*.jp*g"

find `pwd` -type f -iname "*.m4a" -or -iname "*.m4p" -or -iname "*.mp3" -or -iname "*.wav" -or -iname "*.aiff"

find `pwd` -type f -iname "*.xls" -or -iname "*.xlsx" -or -iname "*.ods"

find `pwd` -type f -iname "*date*" -or -iname "*anniversaire*" -or -iname "*famille*"

find `pwd` -type f -name "boards.txt"

find `pwd` -type f -perm +111 ! \( -path '*/.git/*' -or -path '*/site-web-v4/*' \) -exec ls -la {} \;;
find `pwd` -type f -perm +111 ! \( -path '*/.git/*' -or -path '*/site-web-v4/*' \) -exec chmod a-x {} \;;

cd "/Users/nico/erx-s3/"
find `pwd` -type d -name ".pio" -or -name ".vscode"

cd "/Users/nico/erx-s3/"
find `pwd` -type f -empty ! -name '__init__.py' ! -name 'FETCH_HEAD'

find `pwd` -type f -size +1G

find `pwd` -type f -name "*.log"
find "/media/pi/LaCie/BACKUP/" -type f -name "*.log"

cd ~ && find `pwd` -type f -name "*_conflict*" -exec md5sum {} \;;