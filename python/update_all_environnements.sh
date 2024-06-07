#!/bin/zsh

###
# source ~/Public/snippets/python/update_all_environnements.sh
##

cd "$(dirname "$0")"

PATHS=(
    ~/pyve9/bin/activate
    ~/pyve10/bin/activate
    ~/pyve11/bin/activate
    ~/pyve12/bin/activate
)

for path in "${PATHS[@]}"; do
    echo $path
    source $path
    python3 -m pip install --upgrade pip
    python3 -m pip install --upgrade -r requirements.txt
done
