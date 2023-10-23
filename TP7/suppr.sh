#!/bin/bash
v=$(cat liste1.txt);for f in $v; do echo $f && userdel -r $f;done
groupdel t_users
