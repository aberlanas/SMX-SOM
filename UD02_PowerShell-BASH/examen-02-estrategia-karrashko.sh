#!/bin/bash

echo " Juego Matematico de Karr'Ash-Ko"

let OCULTO=$RANDOM%103+1
INTENTOS=0

read -p " Dime un numero " NUMERO

while [ $NUMERO -ne $OCULTO ]; do
	
	if [ $NUMERO -gt $OCULTO ]; then
		echo " Demasiado Grande"
	else
		echo " Demasiado Pequeño"
	fi
	((INTENTOS++))
	
	read -p " Dime un numero " NUMERO
done

if [ $INTENTOS -lt 7 ]; then
	echo "Eres tan astuto como Karr'Ash-Ko : $INTENTOS"
else
	echo "Karr'Ash-Ko te supera: $INTENTOS son muchos"
fi
