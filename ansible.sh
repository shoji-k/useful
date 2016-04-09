#!/bin/sh

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

# next> ssh.sh

# command
# ansible-playbook -i newdev site.yml -K -vvvv -t wp
