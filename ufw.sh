#!/bin/sh

sudo ufw default DENY
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 20022
sudo ufw allow mosh
