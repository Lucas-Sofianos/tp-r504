#!/bin/bash

docker run --rm -d -it\
	 --name tp4-app\
	 --network net-tp4\
	 -p 5000:5000\
	 im-tp4

if [ $? != 0 ]
then
	echo "echec de lancement du conteneur app"
	exit 1
fi