#!/bin/bash

:> /tmp/esPrimo.log

INITIAL_NUMBER=1

if [ -z "$1" ];then
    read -p " * Indicame un numero de primos : " nPrimos
else
    nPrimos=$1
fi

esPrimo(){

    PRIMO_TO_TEST=$1
    let TEST=2
    
    let LIMIT_TO_TEST=$PRIMO_TO_TEST/2-1
    

    NOT_PRIME=""

    echo " ******** " >> /tmp/esPrimo.log
    echo " ** COMPROBAREMOS : $PRIMO_TO_TEST - hasta ${LIMIT_TO_TEST}" >> /tmp/esPrimo.log

    while [ ${TEST} -gt 1 -a ${TEST} -lt ${LIMIT_TO_TEST} -a -z "${NOT_PRIME}" ]; do
    

        let module=${PRIMO_TO_TEST}%${TEST}

        if [ $module -eq 0 ]; then
            NOT_PRIME="TRUE"
            echo " - ${PRIMO_TO_TEST} % ${TEST} : 0 " >> /tmp/esPrimo.log
        else
            echo " - ${PRIMO_TO_TEST} % ${TEST} : != 0 " >> /tmp/esPrimo.log
        fi

        let TEST=$TEST+1
        
    done

    if [ -z "${NOT_PRIME}" ];then
        echo " - $PRIMO_TO_TEST NO PRIMO " >> /tmp/esPrimo.log
        echo 0
    else
        echo 1
    fi
}

PRIMO=1

while [ $nPrimos -gt 0 ]; do

    echo "Calculando : ${PRIMO}"

    rc=$(esPrimo $PRIMO)

    if [ $rc -eq 0 ]; then
        echo " $PRIMO : Es primo "
        let nPrimos=$nPrimos-1
    else
        echo " $PRIMO : No es primo "
    fi

    let PRIMO=$PRIMO+1

done

exit 0