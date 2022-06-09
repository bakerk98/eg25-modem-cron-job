#!/bin/sh

#should be run as root btw
restartEG25() {
    if command -v rc-update; then
        rc-service eg25-manager restart
    else
        systemctl restart eg25-manager
    fi
}

allGood() {
    echo "Cron job for a Modem check: Modem is OK";
}

mmcli -L | grep -q "No modems were found" && restartEG25 || allGood
