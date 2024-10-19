#!/usr/bin/env zsh

# Obtain permissions in numerical format for use with chmod.

FILENAME=permissions.sh
stat -f '%A' $FILENAME

# 644 = -rw-r--r--
chmod 644 $FILENAME

# Remove extended attributes
xattr -rc .

# Change file permissions recursively
# 666 = -rw-rw-rw-
# 644 = -rw-r--r-- => standard
sudo find . -type f \( -path "./.git/*" -prune -o -exec chmod 644 {} \; \)

# Change directory permissions recursively
# 777 = drwxrwxrwx
# 755 = drwxr-xr-x => standard
sudo find . -type d \( -path "./.git/*" -prune -o -exec chmod 755 {} \; \)

# Change owner recursively
sudo chown -R $USER .

