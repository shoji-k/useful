#!/bin/sh

ssh-keygen -t rsa -b 4096 -C "sample@sample.com"

# create id_rsa and id_rsa.pub
# copy id_rsa.pub text to each services
#   github.com or bitbucket.com ..
