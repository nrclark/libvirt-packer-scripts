#!/bin/sh

echo "auto lo" >> /etc/network/interfaces
echo "iface lo inet loopback" >> /etc/network/interfaces
echo "" >> /etc/network/interfaces

echo "source /etc/network/interfaces.d/*" > /etc/network/interfaces
echo "" >> /etc/network/interfaces

echo "auto eth0" >> /etc/network/interfaces
echo "iface eth0 inet dhcp" >> /etc/network/interfaces
echo "" >> /etc/network/interfaces

echo "#VAGRANT-BEGIN" >> /etc/network/interfaces
echo "# This section will be auto-replaced" >> /etc/network/interfaces
echo "auto eth1" >> /etc/network/interfaces
echo "iface eth1 inet manual" >> /etc/network/interfaces
echo "" >> /etc/network/interfaces
echo "#VAGRANT-END" >> /etc/network/interfaces
echo "" >> /etc/network/interfaces

sed -i 's/[ #]*GRUB_CMDLINE_LINUX=.*/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"/g' /etc/default/grub
update-grub
