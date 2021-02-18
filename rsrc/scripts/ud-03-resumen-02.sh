#!/bin/bash

ip addr| grep mtu| cut -d " " -f 1,2

read -p " * Dime una tarjeta : " NOM

IPADD=$(ip address show $NOM| grep inet| grep -v inet6| tr -s " " | cut -d " " -f3 | cut -d "/" -f1)
MASK=$(ip address show $NOM| grep inet| grep -v inet6| tr -s " " | cut -d " " -f3 | cut -d "/" -f2)
let HOSTP=32-$MASK
let NUMHOST=2**$HOSTP-2

echo " * La IP es : $IPADD"
echo " * La Mascara es : $MASK"
echo " * La red permite hasta $NUMHOST hosts"

exit 0
