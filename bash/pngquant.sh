###
#
##

shopt -s nullglob
cd ~/erx-s3/erx-nozzles/booms/flowduino/plots-nogit
FILE_NAMES=(*.png)

for file_name in "${FILE_NAMES[@]}"; do
    echo -e "\n\n\n"
    pngquant                       \
        --strip                    \
        --speed 1                  \
        --verbose                  \
        --force                    \
        --skip-if-larger           \
        --quality 0-2              \
        10                         \
        --output "$file_name"      \
        "$file_name"
done

