#!/bin/zsh

script_dir=$(dirname "$0")
session_name=$(date "+%Y-%m-%d_%H-%M-%S")
byobu new-session -c "$script_dir" -s $session_name -d
byobu send-keys -t $session_name "python3 -c 'print(\"Hello world!\")'" C-m
byobu a -t $session_name
kill -s INT $$
