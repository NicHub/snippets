###
#
# options:
#   --force           overwrite existing output files (synonym: -f)
#   --skip-if-larger  only save converted files if they're smaller than original
#   --output file     destination file path to use instead of --ext (synonym: -o)
#   --ext new.png     set custom suffix/extension for output filenames
#   --quality min-max don't save below min, use fewer colors below max (0-100)
#   --speed N         speed/quality trade-off. 1=slow, 4=default, 11=fast & rough
#   --nofs            disable Floyd-Steinberg dithering
#   --posterize N     output lower-precision color (e.g. for ARGB4444 output)
#   --strip           remove optional metadata (default on Mac)
#   --verbose         print status messages (synonym: -v)
#
# usage:  pngquant [options] [ncolors] -- pngfile [pngfile ...]
#         pngquant [options] [ncolors] - >stdout <stdin
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
        --quality 0-100               \
        10                           \
        --output "$file_name-out.png" \
        "$file_name"
done
