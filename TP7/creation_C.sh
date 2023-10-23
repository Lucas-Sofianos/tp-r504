#!/bin/bash
function creation {
	user=$1
	passwd=$2
	adduser $user --disabled-password --gecos "" && usermod -G t_users $user
	echo "$user":"$passwd" | chpasswd
}

groupadd t_users
while IFS=";" read v_nom v_passwd
do 
	passwd=$(pwgen --num-passwords=1)
	echo "nom=$v_nom passwd=$passwd"
	creation $v_nom $passwd
done < liste3.txt

