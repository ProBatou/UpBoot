#!/bin/bash

echo "Quel est nom le nom de la machine ?"
read name
sed -i "s/$HOSTNAME/$name/g" /etc/hosts
hostnamectl set-hostname $name

rm -f /etc/machine-id /var/lib/dbus/machine-id
dbus-uuidgen --ensure=/etc/machine-id
dbus-uuidgen --ensure
passwd
apt update && apt full-upgrade -y

echo "La machine est prete et à jour, elle va redemarrer !"

for i in {3..1}
do
  echo -e "\033[31m\r "$i" \c\033[0m"
  sleep 1
  if [ $i -eq 1 ]
  then
    rm $BASH_SOURCE
    reboot
  fi
done
