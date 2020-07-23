#!/bin/sh
echo This is unofficial Anbox Installer
echo Compatible systems:
echo Ubuntu and Ubuntu based distros.
echo This installer works on Ubuntu 18.10 and lower.To install Anbox on Ubuntu 19.04 and never type:
echo sudo snap install --devmode --beta anbox
echo Open this file with sh or it doesnt works.
echo -n "Press Enter to install Anbox, or close terminal window to abord"
read pause1
sudo add-apt-repository ppa:morphis/anbox-support
sudo apt update
sudo apt install linux-headers-generic anbox-modules-dkms
sudo modprobe ashmem_linux
sudo modprobe binder_linux
sudo snap install --devmode --beta anbox
echo Anbox done installed.
