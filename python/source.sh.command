#!/usr/bin/env bash

echo $0
echo "$BASH_SOURCE"

if [[ $0 == "$BASH_SOURCE" ]]; then
    echo "direct"
    source $0 $*
else
    echo "indirect"
fi

kill -s INT $$

echo "BASH_SOURCE" $BASH_SOURCE
echo "ZSH_SOURCE" $ZSH_SOURCE
echo "SOURCE" $SOURCE

echo 1 $$
echo "${@: -1}"

script_dir=$(dirname "$0")
cd $script_dir


export PWD=$script_dir


if [[ "${@: -1}" != "redo" ]]; then
    echo 2 $$
    cd $script_dir
    echo $script_dir
    echo $0 $1 redo
    source $0 $* redo
    #kill -s INT $$
fi

echo 3 $$

python3 -c 'print("Hello World 1!")'

echo "DONE"
pwd
kill -s INT $$


echo $0
echo $1
echo $2
echo "##"
echo $@
b=$*
echo $b

echo "##"

echo "##"
echo ${b[0]}
echo "###"
echo ${b[1]}
echo "####"
echo ${b[2]}
#echo ${b[-1]}

#
# source "$0"
# script_dir=$(dirname "$0")
# cd $script_dir
# clear
# pwd
# python3 -c 'print("Hello World 1!")'
# $SHELL
#
# exit
# python3 -c 'print("Hello World 2!")'