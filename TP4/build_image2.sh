#!/bin/bash

docker build -t im-tp4-2 -f Dockerfile2 .

if [ $? != 0 ]
then
	echo "echec de creation de l'image à partir du Dockerfile"
	exit 1
fi

