#!/bin/sh

#should be run as root btw
restartEG25() {
    rc-service restart eg25-manager
}

allGood() {
    echo "Cron job for a Modem check: Modem is OK";
}

mmcli -L | grep -q "No modems were found" && restartEG25 || allGood
