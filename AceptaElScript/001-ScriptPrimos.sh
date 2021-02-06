#!/bin/bash
INITIAL_NUMBER=1

if [ -z "$1" ];then
    read -p " * Indicame un numero de primos : " nPrimos
else
    nPrimos=$1
fi

esPrimo(){

    PRIMO_TO_TEST=$1
    NOT_PRIME=""

    let TEST=2
    let LIMIT_TO_TEST=$PRIMO_TO_TEST/2-1
    
    test $LIMIT_TO_TEST -gt 3 || LIMIT_TO_TEST=3

    while [ ${TEST} -gt 1 -a ${TEST} -lt ${LIMIT_TO_TEST} -a -z "${NOT_PRIME}" ]; do
    

        let module=${PRIMO_TO_TEST}%${TEST}

        if [ $module -eq 0 -a $PRIMO_TO_TEST -ne 2 ]; then
            NOT_PRIME="TRUE"
        fi
        let TEST=$TEST+1
    done

    if [ -z "${NOT_PRIME}" ];then
        echo 0
    else
        echo 1
    fi
}

PRIMO=1

while [ $nPrimos -gt 0 ]; do

    rc=$(esPrimo $PRIMO)

    if [ $rc -eq 0 ]; then
        echo " $PRIMO "
        let nPrimos=$nPrimos-1
    fi

    let PRIMO=$PRIMO+1

done

exit 0