#!/bin/bash

SUPERIOR=0
MICHIGAN=0
HURON=0
ERIE=0
ONTARIO=0

while /bin/true; do

	echo " * Seleccione una opcion: "
	echo " - S) Lago Superior "
	echo " - M) Lago Michigan "
	echo " - H) Lago Huron "
	echo " - E) Lago Erie "
	echo " - O) Lago Ontario"
	echo " - I) Mostrar Informe"
	echo " - q) Salir"

	read -p " Opcion : " OPCION

	if [ $OPCION = "S" ]; then
	     read -p " Introduzca caudal ->" AUX
	     let SUPERIOR=$SUPERIOR+$AUX
	
	elif [ $OPCION = "M" ]; then
	     read -p " Introduzca caudal ->" AUX  	
	     let MICHIGAN=$MICHIGAN+$AUX

	elif [ $OPCION = "H" ]; then
	     read -p " Introduzca caudal ->" AUX  	
	     let HURON=$HURON+$AUX

	elif [ $OPCION = "E" ]; then
	     read -p " Introduzca caudal ->" AUX  	
	     let MICHIGAN=$ERIE+$AUX

	elif [ $OPCION = "O" ]; then
	     read -p " Introduzca caudal ->" AUX  	
	     let ONTARIO=$ONTARIO+$AUX

	elif [ $OPCION = "I" ]; then
	     echo " * Informe : "
	     echo " Lago Superior : $SUPERIOR "
	     echo " Lago Michigan : $MICHIGAN "
	     echo " Lago Huron : $HURON "
	     echo " Lago Erie : $ERIE "
	     echo " Lago Ontario : $ONTARIO"

	     let TOTAL=$SUPERIOR+$MICHIGAN+$HURON+$ERIE+$ONTARIO
	     
	     if [ $TOTAL -lt 100 ] ; then
		echo " --- Malo --- "
	     elif [ $TOTAL -le 850 ]; then
		echo " --- Bueno ---"
	     else 
		echo " --- Optimo ---"
	     fi
	elif [ $OPCION = "q" ]; then
	     exit 1
	fi

done
