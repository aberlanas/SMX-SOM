#!/bin/bash

echo " --- Bienvenidos a Irkutsk ---"

MERCANCIA=0
SACOS=0
PASAJEROS=0

for mes in Octubre Noviembre Diciembre Enero Febrero Marzo Abril; do
	echo " - Mes de $mes "

	read -p " ---> Toneladas de Mercancia : " AUX
	let MERCANCIA=$MERCANCIA+$AUX

	read -p " ---> Sacos de correos : " AUX

	if [ $mes = "Enero" -o $mes = "Diciembre" ]; then
		let AUX=$AUX+$AUX		
	fi
	
	let SACOS=$SACOS+$AUX

	read -p " ---> Pasajeros : " AUX
       	
	if [ $mes = "Noviembre" ]; then
		let AUX=$AUX*3
	fi	
	
	let PASAJEROS=$PASAJEROS+$AUX

done

let SUELDO=$MERCANCIA*10+$SACOS*30+$PASAJEROS*100

echo " El Sueldo final es $SUELDO"

exit 0
