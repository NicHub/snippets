#!/usr/bin/env zsh


find "`pwd`" -type f -iname "*.pdf"

find "`pwd`" -type f \( -iname "*.png" -or -iname "*.jp*g" \) -exec md5sum {} \;;

find "`pwd`" -type f -iname "*.png" -or -iname "*.jp*g"

find "`pwd`" -type f -iname "*.m4a" -or -iname "*.m4p" -or -iname "*.mp3" -or -iname "*.wav" -or -iname "*.aiff"

find "`pwd`" -type f -iname "*.xls" -or -iname "*.xlsx" -or -iname "*.ods"

find "`pwd`" -type f -iname "*date*" -or -iname "*anniversaire*" -or -iname "*famille*"

find "`pwd`" -type f -name "boards.txt"

find "`pwd`" -type d -name ".git"
find "`pwd`" -type f -perm +111 ! \( -path '*/.git/*' -or -path '*/site-web-v4/*' \) -exec ls -la {} \;;
find "`pwd`" -type f -perm +111 ! \( -path '*/.git/*' -or -path '*/site-web-v4/*' \) -exec chmod a-x {} \;;


find "`pwd`" -type d -name ".pio" -or -name ".vscode"
find "`pwd`" -type d -name "cnl-spirit"

find "`pwd`" -type f -empty ! -name '__init__.py' ! -name 'FETCH_HEAD'

find "`pwd`" -type f -size +1G

find "`pwd`" -type f -name "*.log"
find "/media/pi/LaCie/BACKUP/" -type f -name "*.log"

find "`pwd`" -type f \( -name "*conflicted copy*" \) -exec md5sum {} \;;
find "`pwd`" -type f -name "*_conflict*" -exec md5sum {} >> ~/Desktop/kdrive_conflicts.log \;

find "`pwd`" -type f -name "*xerces*"

find "`pwd`" -type f -name ".DS_Store" -exec rm {} \;;

# Run another command at the end with all the results.
find "`pwd`" -type f -exec find {} +
# Run another command each time a result is returned.
find "`pwd`" -type f -exec find {} \;

# List all files that have extended attributes
find "`pwd`" -exec ls -l {} + | grep @

# List hidden files
ls -a | grep '^\.'

sudo find / -type f -name "avrdude"
sudo find "`pwd`" -type f -name "M5Atom.h"

sudo find / -type f -name "avrdude"

ls -R ~/Documents/Arduino/libraries | grep -i "core"
time ls -R ~ | grep -i "MAX30100"
ls -d -1 -R ~/Documents/Arduino/libraries | grep -i "core"
ls -d -1 -R . | grep -i "atom"

sudo find / -type f -name "koshi-player.html"