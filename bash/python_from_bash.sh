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
echo $TIC
# echo $TOC
# dT=$(($TOC-$TIC))
# echo $dT


echo 'Hello!' | python -c "import sys;d=sys.stdin.read(); print('{}\n'.format(d))"
echo 'Hello!' | python -c "import sys;d=sys.stdin.read(); print(d[::-1])"
ls | python -c "import sys;d=sys.stdin.read(); print(d[::-1])"
ls | python -c "import sys;d=sys.stdin.read(); print(d)"

python -c 'import datetime as dt; localnow = dt.datetime.now().astimezone(); print(localnow.strftime("%Y-%m-%dT%H:%M:%S.%f%z"))'


