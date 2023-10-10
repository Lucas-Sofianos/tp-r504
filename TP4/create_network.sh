#!/bin/bash
docker network create -d bridge net-tp4

if [ $? != 0 ]
then
	echo "echec de creation du réseaux de liaison"
	exit 1
fi