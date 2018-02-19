#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# Find the IP address of the virtualbox host
sudo netstat -r | grep 'default' | awk '{print $2, "vbhost"}' >> /etc/hosts

# handy script to run the main ansible playbook
cp /vagrant/aprun.sh .
chmod 775 aprun.sh

# script to update known_hosts from the ansible inventory
cp /vagrant/ansible-known_hosts.sh .
chmod 775 ansible-known_hosts.sh
