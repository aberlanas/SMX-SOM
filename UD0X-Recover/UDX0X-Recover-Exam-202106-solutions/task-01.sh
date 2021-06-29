#!/bin/bash

# Testing number of arguments.

if [ $# -ne 4 ]; then
    echo " Incorrect number of parameters "
    echo " USAGE : ./task-01.sh extension number [init|working-area|stop] [0-1]"
    exit 1
fi

# Testing the arguments individually

# Testing if $1 starts with dot.
rc=0
echo $1 | grep -q ^\\. || rc=1
if [ $rc -eq 0 ]; then
    echo " Extension must not start with dot."
    exit 0
fi

# Testing if $2 is between 1 and 100
if [ $2 -lt 1 -o $2 -gt 100 ]; then
    echo " Between 1 and 100 number "
    exit 0
fi

# Init or Working area
rc=0
echo $3 | grep -E "init |working-area |stop " || rc=1
if [ $rc -eq 1 ] ; then
    echo " Only init, working-area and stop are valid values "
    exit 0
fi


exit 0