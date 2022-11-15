find ~/erx-s3 -type f \( -name "*conflicted copy*" \) -exec md5sum {} \;;

find `pwd` -type f \( -iname "*.png" -or -iname "*.jp*g" \) -exec md5sum {} \;;

find `pwd` -type f -iname "*.png" -or -iname "*.jp*g"

find ~ -type f -iname "*.xls" -or -iname "*.xlsx" -or -iname "*.ods"
