#!/bin/bash
echo "atención: la direccion de red tiene que ser introducida sin el ultimo numero."
echo "Ejemplo: xxx.xxx.xxx."
read -p '¿De qué red quieres sacar los hosts activos?: ' red
read -p '¿cuantos hosts quieres analizar?(maximo 254): ' hosts

echo "#############################################################################"

for i in $(seq 1 $hosts); 
do ping -c 1 "$red$i" |grep from >/dev/null &&echo -e  "$red$i \e[1;32m[Up]\e[1;37m" && echo "$red$i">>/tmp/active-hosts.txt; 

done;



