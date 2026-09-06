#!/usr/bin/env bash

CUR_GIT_DIR=".git"
NEW_GIT_DIR=".git-nogit-nogitclean-nokdrive"
mv "$CUR_GIT_DIR" "$NEW_GIT_DIR"
ln -s "$NEW_GIT_DIR" "$CUR_GIT_DIR"
