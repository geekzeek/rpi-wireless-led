#
# install script for RPiAdHocWifi
#

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
cp network/rc.local /etc
cp network/udhcpd.conf /etc
cp network/dhcpcd.conf /etc

exit 0
