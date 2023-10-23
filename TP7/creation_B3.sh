#!/bin/bash
groupadd t_users
while IFS=";" read v_nom v_passwd
do
	passwd=$(date +%s | sha256sum | head -c 8);echo $passwd
	echo "nom=$v_nom passwd=$passwd"
	adduser $v_nom --disabled-password --gecos "" && usermod -G t_users $v_nom
	echo "$v_nom":"$passwd" | chpasswd
	sleep 1
done < liste3.txt
 
