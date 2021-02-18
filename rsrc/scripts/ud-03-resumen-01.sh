#!/bin/bash

read -p " * Dime un usuario : " USUARIO
ps aux | grep ^$USUARIO | tr -s " " | cut -d " " -f 2,9,11 
echo " El usuario tiene : $(ps aux | grep ^$USUARIO | tr -s " " | cut -d " " -f 2-11 | wc -l ) procesos"


exit 0
