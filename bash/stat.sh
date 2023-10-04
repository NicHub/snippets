# Obtain authorization in numerical format for use with chmod.
stat -f '%A' $FILENAME

chmod 644 *
xattr -rc .
