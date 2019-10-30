#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root, IE: sudo"
  return 1
fi

# install required packages
apt install udhcpd
touch /var/lib/misc/udhcpd.leases

# make backups of existing files
if [ -e /etc/rc.local ]
then
    cp /etc/rc.local /etc/rc.local.adhoc_bak
fi

if [ -e /etc/udhcpd.conf ]
then
    cp /etc/udhcpd.conf /etc/udhcpd.conf.adhoc_bak
fi

if [ -e /etc/dhcpcd.conf ]
then
    cp /etc/dhcpcd.conf /etc/dhcpcd.conf.adhoc_bak
fi

# copy new files
cp leader/rc.local /etc
cp leader/udhcpd.conf /etc
cp leader/dhcpcd.conf /etc

echo "Installation complete. Please reboot now for changes to take effect."
exit 0