# stty -echoctl => disable ^C on SIGINT
# stty echoctl => enable ^C on SIGINT

stty -echoctl; while true; do datetime=$(date +"%d.%m.%Y %H:%M:%S"); echo -ne "Date et heure : $datetime\r"; sleep 1; done

stty -echoctl ; python -c "exec('try:\n    input()\nexcept KeyboardInterrupt:\n    pass')"
