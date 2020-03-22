#!/bin/bash
read -p '¿Qué IP quieres analizar?: ' host
echo "##############################################################################################################################"
for port in $(seq 1 65535)
do
(echo test > /dev/tcp/$host/$port && echo $host:$port ) 2> /dev/null 
done
