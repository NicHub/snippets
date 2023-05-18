###
#
##

shopt -s nullglob
[[ ! -d $1 ]] && ( echo "Provide a path to a directory with PNGs inside" ; exit 1 )
cd $1
FILE_NAMES=(*.png)
for file_name in "${FILE_NAMES[@]}"; do
    echo -e "\n\n\n"
    pngquant                          \
        --strip                       \
        --speed 1                     \
        --verbose                     \
        --force                       \
        --skip-if-larger              \
        --quality 0-2                 \
        3                             \
        --output "$file_name-out.png" \
        "$file_name"
done
