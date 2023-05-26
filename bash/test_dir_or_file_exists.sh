
DIRECTORY=/Volumes/CIRCUITPY

if [[ ! -d "$DIRECTORY" ]]; then
    echo "${DIRECTORY} does not exist. Bye!"
    exit 1
fi
