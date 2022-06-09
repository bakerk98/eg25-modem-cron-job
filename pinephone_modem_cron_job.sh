#!/bin/sh

#should be run as root btw
restartEG25() {
    rc-service eg25-manager restart
}

allGood() {
    echo "Cron job for a Modem check: Modem is OK";
}

mmcli -L | grep -q "No modems were found" && restartEG25 || allGood
