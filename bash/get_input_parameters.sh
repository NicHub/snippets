###
#
# USAGE EXAMPLE
# bash get_input_parameters.sh -w "toto" -d -c
#
# SOURCE
# https://stackoverflow.com/a/16496491/3057377
#
# SEE ALSO
# https://www.geeksforgeeks.org/how-to-pass-and-parse-linux-bash-script-arguments-and-parameters/
# https://en.wikipedia.org/wiki/Getopts
# https://www.freebsd.org/cgi/man.cgi?query=getopt&sektion=1
# https://ss64.com/osx/getopts.html
#
##


OPT_D=""
OPT_C=""
OPT_W=""

while getopts 'dcw:' option; do
    case "${option}" in
        d) OPT_D="DRY RUN"  ;;
        c) OPT_C="COOL RUN" ;;
        w) OPT_W=$OPTARG    ;;
    esac
done

echo "OPT_D = ${OPT_D}"
echo "OPT_C = ${OPT_C}"
echo "OPT_W = ${OPT_W}"




# #####################




DRY_RUN=""
while getopts ':d' arguments; do
    case "${arguments}" in
        d) DRY_RUN="--dry-run" ;;
    esac
done

SOURCE_DIR=.
TARGET_DIR=/Volumes/CIRCUITPY

ARGS=(
    " sync"
    " $SOURCE_DIR"
    " $TARGET_DIR"
    " --progress"
    " --verbose"
    " --skip-links"
    " --modify-window 2s"
    " --filter-from $SOURCE_DIR/rclonefilter"
    " --update"
    " --stats-file-name-length 0"
    " $DRY_RUN"
)

rclone ${ARGS[@]}
