#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root, IE: sudo make install-leader"
  return 1
fi

rm /etc/network/interfaces
mv /etc/network/interfaces-backup /etc/network/interfaces
rm /etc/dhcp/dhcpd.conf