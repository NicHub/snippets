###
# USAGE EXAMPLE
# bash get_input_parameters.sh -a 2 -b 3 -c toto
#
# SOURCE
# https://stackoverflow.com/a/16496491/3057377
##

OPT_A=""
OPT_B=""
OPT_C=""
while getopts ":a:b:c:" option; do
    case "${option}" in
        a) OPT_A=${OPTARG} ;;
        b) OPT_B=${OPTARG} ;;
        c) OPT_C=${OPTARG} ;;
    esac
done

echo "OPT_A = ${OPT_A}"
echo "OPT_B = ${OPT_B}"
echo "OPT_C = ${OPT_C}"

