#!/usr/bin/env bash

# https://chatgpt.com/share/6a9d7710-5ac4-83ed-b8a6-19b08e471a9e
# https://chatgpt.com/s/task_7f71d83d281881919a8fa757b797c656
# !!! WARNING This solution is not tolerant to `git clean -fdx` !!!

CUR_GIT_DIR=".git"
NEW_GIT_DIR=".git-nogit-nogitclean-nokdrive"
mv "$CUR_GIT_DIR" "$NEW_GIT_DIR"
ln -s "$NEW_GIT_DIR" "$CUR_GIT_DIR"
