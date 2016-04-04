#!/bin/sh

# upload id_rsa.pub to ~/

cd ~
mkdir .ssh
touch .ssh/authorized_keys
cat id_rsa.pub > .ssh/authorized_keys
rm id_rsa.pub
chmod 600 .ssh/authorized_keys


# $ vi /etc/ssh/sshd_config
# ```
# Host *
# Port 20022
# Protocol 2
# PermitRootLogin without-password
# ```

sudo service ssh restart
