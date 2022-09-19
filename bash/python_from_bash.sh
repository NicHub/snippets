# which python3

# python3 <<HEREDOC
# import sys
# for p in sys.path:
#     print(p)
# HEREDOC

# python -c 'print("Hi")'

GET_TIME() {
    T=$(python -c 'import time; tic=time.time(); print(tic)')
    echo $T
}
GET_ELAPSED_TIME() {
    echo $TIC
    echo $TOC
}

TIC=$(GET_TIME)
# sleep 1
TOC=$(GET_TIME)
# GET_ELAPSED_TIME()
# echo $TIC
# echo $TOC
# dT=$(($TOC-$TIC))
# echo $dT
