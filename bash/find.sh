#!/usr/bin/env bash

cd /Users/nico/erx-s3/erx-technical-documentation/13-DOC-ARA

find `pwd` -type f -iname "*.pdf"

find `pwd` -type f \( -name "*conflicted copy*" \) -exec md5sum {} \;;

find `pwd` -type f \( -iname "*.png" -or -iname "*.jp*g" \) -exec md5sum {} \;;

find `pwd` -type f -iname "*.png" -or -iname "*.jp*g"

find `pwd` -type f -iname "*.xls" -or -iname "*.xlsx" -or -iname "*.ods"

find `pwd` -type f -iname "*date*" -or -iname "*anniversaire*" -or -iname "*famille*"
