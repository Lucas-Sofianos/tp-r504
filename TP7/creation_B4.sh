#!/bin/bash
groupadd t_users
while IFS=";" read v_nom v_passwd
do 
	passwd=$(pwgen --num-passwords=1)
	echo "nom=$v_nom passwd=$passwd"
	adduser $v_nom --disabled-password --gecos "" && usermod -G t_users $v_nom
	echo "$v_nom":"$passwd" | chpasswd
done < liste3.txt
 
