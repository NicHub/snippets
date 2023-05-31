###
#
##

TIMEFORMAT='It takes %R seconds to complete this task...'
TIMEFORMAT=$'\nElapsed time: %E'
time {
    sleep 1
}

TIC=$(date +%s.%3N)
sleep 1
TOC=$(date +%s.%3N)
dT=$((TOC-TIC))
echo $TIC
echo $TOC
echo $dT


# echo "It takes $($ENDTIME - $STARTTIME) seconds to complete this task..."
# time format out
# TIMEFMT=$'\nElapsed time: %E'

# $'\nElapsed time: %E' time sleep 2

ls > $(date "+%Y-%m-%d_%H-%M-%S_prop.txt")
