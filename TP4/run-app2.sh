#!/bin/bash

docker run --rm -d -it\
	 --name tp4-app2\
	 --network net-tp4\
	 -p 5000:5000\
	 --mount type=bind,source="$(pwd)"/app_1.py,target="/srv/app_1.py"\
	 im-tp4-2

if [ $? != 0 ]
then
	echo "echec de lancement du conteneur app"
	exit 1
fi