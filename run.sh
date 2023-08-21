#!/bin/bash

if [ -e "/etc/install.lock" ]; then #Execute on firt start
    wget -qO- https://raw.githubusercontent.com/Ancelade/VpsStarterScript/main/onInstall.sh | bash
    touch /etc/install.lock
fi

#Execute on all start
wget -qO- https://raw.githubusercontent.com/Ancelade/VpsStarterScript/main/onStart.sh | bash

