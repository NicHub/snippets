find `pwd` -type f \( -iname "*.png" -or -iname "*.jp*g" \) -exec md5sum {} \;;

find `pwd` -type f -iname "*.png" -or -iname "*.jp*g"

