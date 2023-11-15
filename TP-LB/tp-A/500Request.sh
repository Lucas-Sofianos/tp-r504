#!/bin/bash
compt1=0
compt2=0

for (( i=1; i<=500; i++ ))
do  
   echo "request $i"
   request=$(curl http://localhost:83)
   if [ "$request" = '<h1>Hello 1</h1>' ];
   then
   echo "Vous êtes sur nginx1"
   compt1=$(($compt1 + 1))
   
   else
   echo "Vous êtes sur nginx2"
   compt2=$(($compt2 + 1))
fi
done

echo "il y a eu $compt1 connections sur le serveur nginx1"
echo "il y a eu $compt2 connections sur le serveur nginx2"
echo "sois $compt1 / $compt2"
