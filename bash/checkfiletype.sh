#!/usr/bin/env zsh

# http://tldp.org/LDP/abs/html/fto.html
# 7.2. File test operators


PORT=/dev/tty.usbserial-A50285BI
ls $PORT

if [[ -e $PORT ]] ; then
    echo 'file exists'
fi

if [[ -f $PORT ]] ; then
    echo 'file is a regular file (not a directory or device file)'
fi

if [[ -s $PORT ]] ; then
    echo 'file is not zero size'
fi

if [[ -d $PORT ]] ; then
    echo 'file is a directory'
fi

if [[ -b $PORT ]] ; then
    echo 'file is a block device'
fi

if [[ -c $PORT ]] ; then
    echo 'file is a character device'
fi

if [[ -p $PORT ]] ; then
    echo 'file is a pipe'
fi

if [[ -h $PORT ]] ; then
    echo 'file is a symbolic link -h'
fi

if [[ -L $PORT ]] ; then
    echo 'file is a symbolic link -L'
fi

if [[ -S $PORT ]] ; then
    echo 'file is a socket'
fi

if [[ -t $PORT ]] ; then
    echo 'file (descriptor) is associated with a terminal device'
fi

if [[ -r $PORT ]] ; then
    echo 'file has read permission (for the user running the test)'
fi

if [[ -w $PORT ]] ; then
    echo 'file has write permission (for the user running the test)'
fi

if [[ -x $PORT ]] ; then
    echo 'file has execute permission (for the user running the test)'
fi

if [[ -g $PORT ]] ; then
    echo 'set-group-id (sgid) flag set on file or directory'
fi

if [[ -u $PORT ]] ; then
    echo 'set-user-id (suid) flag set on file'
fi

if [[ -k $PORT ]] ; then
    echo 'sticky bit set'
fi

if [[ -O $PORT ]] ; then
    echo 'you are owner of file'
fi

if [[ -G $PORT ]] ; then
    echo 'group-id of file same as yours'
fi

if [[ -N $PORT ]] ; then
    echo 'file modified since it was last read'
fi



