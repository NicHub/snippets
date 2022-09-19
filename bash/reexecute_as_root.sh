###
#
##

[ `whoami` == root ] || { caffeinate -i sudo bash "${0}" "${@}"; exit $?; }
sleep 0.5
echo "done"
