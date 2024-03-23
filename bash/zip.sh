#!/usr/bin/env zsh

# Zip with password
# The -e flag specifies encryption is to be used on the zipfile; you’ll be prompted for a password.
# The -r flag specifies recursion; all the files in dir2 and dir4 will be included.
# The resulting zipped, encrypted file containing dir2 and dir4 will be placed at filename.zip
zip -9er filename.zip dir2 dir4 -x "*.DS_Store"

# recursive zip
DIRNAME=sensdesprenoms
zip -9r $DIRNAME.zip $DIRNAME -x "*.DS_Store" "*nozip*" "*/.*"

DIRNAME=videowall
zip -9r $DIRNAME.zip $DIRNAME -x "*.DS_Store" "*nozip*" "*/.*" "*playlist*"

DIRNAME=factures_aws_impayees
zip -9r $DIRNAME.zip $DIRNAME -x "*.DS_Store" "*nozip*" "*/.*" "*playlist*"

DIRNAME=cv_njeanmon
zip -9r $DIRNAME.zip $DIRNAME -x "*.DS_Store" "*nozip*" "*/.*" "*playlist*"
