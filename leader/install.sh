#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root, IE: sudo make install-leader"
  return 1
fi

echo "INFO: Configuring RPiLEDNetwork"

NetworkInterface="
auto lo
iface lo inet loopback
iface eth0 inet dhcp
 
auto wlan1
iface wlan1 inet static
  address 192.168.1.1
  netmask 255.255.255.0
  wireless-channel 1
  wireless-essid RPiLEDNetwork
  wireless-mode ad-hoc
"
echo "$NetworkInterface" >> /etc/network/interfaces

ifdown wlan1
ifup wlan1

echo "INFO: Configuring dhcp"

sudo apt-get update
sudo apt-get install dhcp3-server

DHCPConfig="
ddns-update-style interim;
default-lease-time 600;
max-lease-time 7200;
authoritative;
log-facility local7;
subnet 192.168.1.0 netmask 255.255.255.0 {
  range 192.168.1.5 192.168.1.150;
}
"

echo "$DHCPConfig" > /etc/dhcp/dhcpd.conf
echo "Installation complete. Restart the Pi, and RPiLEDNetwork will be an available WiFi network"