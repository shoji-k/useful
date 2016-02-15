#!/bin/sh

# show tcp connections only
netstat -at

# show ipv4 and ipv6 connections only
netstat -au

# disable reverse dns lookup, show faster
netstat -n

# show only listening connections
netstat -l

# get process name
netstat -p

# show network statistics
netstat -s

# check if a services is running
sudo netstat -aple | grep ntp


