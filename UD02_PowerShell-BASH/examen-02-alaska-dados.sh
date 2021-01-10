#!/bin/bash

let INTENTOS=$RANDOM%20+1
let OBJETIVO=$RANDOM%6+1

TOTAL=0

echo " * El Objetivo es sacar : $OBJETIVO "
echo "   - Vamos a realizar $INTENTOS intentos"

for i in $(seq 1 $INTENTOS); do

	let TIRADA=$RANDOM%6+1
	if [ $TIRADA -eq $OBJETIVO ]; then	
		echo " * Acierto : $TIRADA"
		((TOTAL++))		
	else
		echo " * Fallo : $TIRADA"
	fi
		
	sleep 0.3
done

echo " * Hemos acertado $TOTAL veces "

exit 0
