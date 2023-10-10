#!/bin/bash

docker stop $(docker ps -aq)
if [ $? != 0 ]
then
	echo "echec d'arrêt des conteneurs"
fi

docker rm $(docker ps -aq)
if [ $? != 0 ]
then
	echo "echec de suppression des conteneurs"
fi

docker system prune
if [ $? != 0 ]
then
	echo "echec de reinitialisation des informations systèmes"
fi

docker volume prune
if [ $? != 0 ]
then
	echo "echec de suppression des volumes"
fi
