#!/bin/bash
# Script para calcular el numero de Patxi
# de un numero dado.

num=$1
# Nos guardamos orig para poder mostrar un mensaje al final
orig=$num
# Iniciamos el numero de saltos a 0
let salto=0
while [ $num -gt 3 ] ; do
	# Test if es par.
	# Obtenemos el resto
	let resto=$num%2
	if [ $resto -eq 0 ]; then
		let num=$num/2
	else
		let resto_3=$num%3
		let resto_5=$num%5
		if [ $resto_3 -eq 0 -a $resto_5 -eq 0 ]; then
			let num=$num+13
		else
			let num=$num+3
			#echo "$num"
		fi
	fi
	((salto++))
done
echo "$orig, $salto"
exit 0
