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
   sudo rm ~/.bash_history
   sudo mv .bash_aliases ~/
   sudo echo "unset HISTFILE" >> .bashrc
   sudo mv issue.net /etc/
   sudo mv *.link /etc/systemd/network/
   sudo update-initramfs -u
   sudo apt install realtek-rtl88xxau-dkms
fi


#Ubuntu
if [[ -n $(hostnamectl | grep "Operating System: Ubuntu") ]];
then
   sudo rm ~/.bash_history
   sudo mv .bash_aliases ~/
   sudo echo "unset HISTFILE" >> .bashrc
   sudo mv issue.net /etc/
   sudo mv 01-network-manager-all.yaml /etc/netplan/
   sudo netplan apply
   #sudo apt install rtl88au-dkms
fi

else
   echo "Unknown operating system";
