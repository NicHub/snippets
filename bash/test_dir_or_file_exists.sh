
PATH_TO_TEST="/foo"

if [[ ! -e "$PATH_TO_TEST" ]]; then
    echo "$PATH_TO_TEST does not exist."
else
    echo "${PATH_TO_TEST} exists."
fi


# DIRECTORY=/foo
DIRECTORY=/Users/nico/Documents/programmation/snippets/bash/stat.sh

if [[ ! -d "$DIRECTORY" ]]; then
    echo "${DIRECTORY} does not exist or is not a directory."
else
    echo "${DIRECTORY} exists."
fi


FILE=/foo.bar
FILE=/

if [[ ! -f "$FILE" ]]; then
    echo "${FILE} does not exist or is not a file."
else
    echo "${FILE} exists."
fi
