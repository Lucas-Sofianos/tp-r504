#!/bin/bash

#etape d'initialisation
read -p "Do you want to proceed a purge ? (y/n) " yn

case $yn in 
	[yY] ) echo ok, we will proceed a purge;
	      ./purge.sh;;
	[nN] ) echo ok maybe later...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

if [ $? != 0 ] 
then
	echo "echec d'initialisation : étape initialisation"
	exit 1
fi



#etape 1
./create_network.sh

if [ $? != 0 ]
then
	echo "echec de creation du réseaux de liaison : étape 1"
	exit 1
fi



#etape 2
./run_mysql.sh
if [ $? != 0 ]
then
	echo "echec de lancement du conteneur sql : étape 2"
	exit 1
fi



#etape 3
./filldb.sh

if [ $? != 0 ]
then
	echo "echec de l'implémentation des données dans la base de donnée : étape 3"
	exit 1
fi



#etape 4
./build_image2.sh
if [ $? != 0 ]
then
	echo "echec de creation de l'image à partir du Dockerfile : étape 4"
	exit 1
fi



#etape 5
./run-app2.sh
if [ $? != 0 ]
then
	echo "echec de lancement du conteneur app : étape 5"
	exit 1
fi