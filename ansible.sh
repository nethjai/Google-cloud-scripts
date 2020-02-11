#!/bin/bash
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
hostname=$(hostname -i)
echo "the IP-address of this host is $hostname"
echo "root:root" | chpasswd
