#!/bin/bash

echo $$ > pid_infinite_loop_nogit.txt
printf "\n\n"
_i=0
while :
do
    printf "\33[2K" # Erase line
    printf "\r" # Move cursor at the begining of the line
    printf "\033[A" # Move cursor one line up
    printf "\033[A" # Move cursor one line up
    printf "\n$_i. Press [CTRL+C] to stop PID = $$ ..\n"
    ((_i=_i+1))
    sleep 0.1
done
