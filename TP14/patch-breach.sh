#!/bin/bash

echo "Nombre de CVE : $(debsecan --suite $(lsb_release --codename --short |tail -n 1) |wc -l)"
echo "Nombre de CVE déjà corrigées : $(debsecan --suite $(lsb_release --codename --short |tail -n 1) --only-fixed|wc -l)"

apt update
apt upgrade

