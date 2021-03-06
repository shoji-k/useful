#!/bin/sh

# each secounds in 1 hour
# dstat -tlafm --output stat.csv 1 3600

dstat -tlafm

# check memory
dstat -t -gs --mem --vm --ipc --top-mem
# check disk io
dstat -tdng --file --lock --top-io --top-bio
# check cpu
dstat -taf --top-cpu

# capture network
tcpdump -i eth0 -n port 80
# capture mysql network
tcpdump -i lo -n port 3306

# check firewall
iptables -nv -L

# show using port (needed to be root)
ss -lnp

# find pid
ps aufx | grep -w 8937 | grep -v grep

# show package name
yum whatprovides /usr/libexec/postfix/master

# show operating time, etc..
w

# show processed
ps aufx

# show disk usage
df -h

# show cpu, memory
top

# show mysql process
mysqladmin -u root processlist -v

# show system call
strace -f -p PID

# show files process is open
lsof -p PID

# show open file for network
lsof -Pi

# show file process current directory
lsof -p 6512 | grep cwd

# show iowait by process
iotop -P

# show network spec
ethtool eth0

# show login history
last | head

# linux process summary report
sudo aureport

# check recently changed files
find /proc/28456/cwd/ -type f -mtime -60 -ls
find /tmp/ -type f -mtime -60 -ls
find /var/tmp/ -type f -mtime -60 -ls

# find ip address
dig @8.8.8.8 google.co.jp
nslookup google.co.jp 8.8.8.8


