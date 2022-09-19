###
#
##

ARRAY=(
    "#47704C"
    "#000000"
    "#2E2A1F"
    "#FFF200"
)

echo "for loop #1"
for _i in ${!ARRAY[@]}; do
    echo "${_i}) ${ARRAY[${_i}]}"
done

echo -e "\nfor loop #2"
for (( _i = 0 ; _i < ${#ARRAY[@]} ; _i++ )) do
    echo "${_i}) ${ARRAY[${_i}]}"
done


echo -e "\nfor loop #3"
for (( _i = 0 ; _i < ${#ARRAY[@]} ; _i+=2 )) do
    echo "${_i}) ${ARRAY[${_i}]}"
done

echo -e "\nfor loop #4"
# DOESN’T WORK WHEN THERE IS NO MATCH !!!
cd ~/Desktop/
for file in *.txt; do
    filename="${file%.*}";
    echo ${filename}
done
