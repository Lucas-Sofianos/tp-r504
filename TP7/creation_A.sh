#!/bin/bash
groupadd t_users
v=$(cat liste1.txt);for f in $v; do echo $f && adduser $f --disabled-password --gecos "" && usermod -G t_users $f;done
 
