#!/bin/bash
#install motd
rm -rf /tmp/motd
cd /tmp
wget https://raw.githubusercontent.com/Ancelade/VpsStarterScript/main/motd
cp motd /etc/motd
fstrim -av


