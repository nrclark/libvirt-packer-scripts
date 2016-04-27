#!/bin/sh

apt-get -y update
apt-get -y upgrade
apt-get -y autoremove
sudo update-grub

apt-get -y install --no-install-recommends \
    linux-headers-virtual linux-image-virtual \
    dkms

apt-get -y install --no-install-recommends dkms

apt-get -y install --no-install-recommends \
    virtualbox-guest-source virtualbox-guest-utils virtualbox-guest-dkms
