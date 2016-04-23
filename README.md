# libvirt-packer-scripts
Packer scripts for creating Libvirt/KVM boxes for Vagrant.

This repository holds Packer scripts for creating a Vagrant Box for
Ubuntu 16.04/Xenial (using Libvirt as a provider).

To build this box yourself, you need the following software:
- Vagrant
- Libvirt and QEMU
- The Vagrant-libvirt plugin
- Packer

My tool versions are:
- Vagrant 1.8.1 (from Fedora 23)
- Libvirt 1.2.18.2 (from Fedora 23)
- Vagrant-libvirt 0.33 (installed locally with the Vagrant plugin manager)
- Packer 0.10.0 (dowloaded from packer.io)

To build the Vagrant box, switch into the `ubuntu-16.04` directory and run 
`packer build ubuntu-16.04-minimal.json`. Note that this will take awhile because
the packer script will try to download the Ubuntu ISO if it doesn't have it cached.

This box is listed on Hashicorp Atlas, and can be found here:
(NOTE: The box has been taken down because it has some network issues that haven't been resolved yet. Stay tuned.)


