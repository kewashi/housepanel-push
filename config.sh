#!/bin/bash

##############################################################################
# Bash script to install housepanel-push as a service
# this is invoked by the postinstall npm script
##############################################################################

if [[ ! $OSTYPE == 'msys' ]]; then
    sudo cp housepanel-push.service /etc/systemd/system
    cd /etc/systemd/system
    sudo systemctl enable housepanel-push
    sudo systemctl daemon-reload
    sudo systemctl restart housepanel-push
else
    echo "Windows does not support installing as a service"
fi

# --- this isn't run here because it is done upon start
