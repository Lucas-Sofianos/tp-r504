#!/bin/bash
for fichier in /etc/$1*.*
do
	file $fichier
done
