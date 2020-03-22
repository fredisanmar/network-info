#!/bin/bash
for host in $(cat /tmp/active-hosts.txt)
do 
for port in 21 22 25 80 443 8080
do
for a in $host:$port
do 
if (openssl s_client -connect $host:$port 2>/dev/null | grep CONNECTED )2>/dev/null
then 
 echo -e  "$host:$port \e[1;32m[Abierto]\e[1;37m" 
else
 echo -e "$host:$port \e[0;31m[Cerrado]\e[1;37m"
fi
done
done
done
