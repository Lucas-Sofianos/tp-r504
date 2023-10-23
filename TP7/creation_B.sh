#!/bin/bash
groupadd t_users
while read v_nom v_passwd
do
	echo "nom=$v_nom passwd=$v_passwd"
	adduser $v_nom --disabled-password --gecos "" && usermod -G t_users $v_nom
	echo "$v_nom":"$v_passwd" | chpasswd
done < liste2.txt
 
