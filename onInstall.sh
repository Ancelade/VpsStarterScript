rm -rf /var/log/*.log
rm -rf /var/log/*.gz
rm -rf /var/log/*.1
rm -rf /var/log/*.2
echo "" > /root/.ssh/authorized_keys
echo "" > /root/.ssh/.bash_history
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
