#!/bin/bash
#
# Edit .bashrc and uncomment useful aliases
# Add distribution name at the end of issue.net
# HISTCONTROL=ignoreboth:ignorespace
# HISTFILE=1000
# HISTFILE=0
#
#


#Kali
if [[ -n $(hostnamectl | grep "Operating System: Kali") ]];
then
   sudo cp .bash_aliases ~/
   sudo echo "unset HISTFILE" >> ~/.bashrc
   sudo cp issue.net /etc/
   sudo cp *.link /etc/systemd/network/
   sudo update-initramfs -u
   sudo apt install realtek-rtl88xxau-dkms
fi


#Ubuntu
elif [[ -n $(hostnamectl | grep "Operating System: Ubuntu") ]];
then
   sudo cp .bash_aliases ~/
   sudo echo "unset HISTFILE" >> ~/.bashrc
   sudo cp issue.net /etc/
   sudo cp 01-network-manager-all.yaml /etc/netplan/
   sudo netplan apply
   #sudo apt install rtl88au-dkms
fi


else
   echo "Unknown operating system";
fi
