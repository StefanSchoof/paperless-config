# My Paperless config

## USB Backup

A udev rule that runs on usb connect. Shows via led that it is running.

1. `sudo cp paperless-usbbackup /usr/local/bin/`
2. `sudo cp 99-backup.rules /etc/udev/rules.d/`

## Azure Backup und notifcation on backup failure

Notfication requires a mail sender configured.

1. At line from `.contab` to `crontab -e`