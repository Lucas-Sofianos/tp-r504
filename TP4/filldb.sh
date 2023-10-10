#!/bin/bash
mysql -u root -p'foo' -h 127.0.0.1 --port=3307 < data.sql

if [ $? != 0 ]
then
	echo "echec de l'implémentation des données dans la base de donnée"
	exit 1
fi
