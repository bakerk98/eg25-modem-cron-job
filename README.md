# eg25-modem-cron-job
Cron job to check mmcli for if theres any modems, and if there isn't, to restart eg25

This should be run as root, because the rc-service command needs root priveleges.
If using systemd, replace the line using rc-service to one using systemctl

To enable cron in SXMO, use 
$ rc-service crond start
$ rc-update add crond default

Then to enable this here script in cron
$ sudo crontab -e

This will open your crontab. Then you can edit it.
Add the following

*/15 * * * * /PATH/TO/SCRIPT

Replacing /PATH/TO/SCRIPT to where your script is.

Lastly, don't forget to give the script executable permissions!
