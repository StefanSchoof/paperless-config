# My Paperless config

## USB Backup

A udev rule that runs on usb connect. Shows via led that it is running.

1. `sudo cp paperless-usbbackup /usr/local/bin/`
2. `sudo cp 99-backup.rules /etc/udev/rules.d/`
3. add line to fstab `UUID="B82F-8721" /mnt/usb vfat noauto,uid=pi,gid=pi,iocharset=utf8`

## Azure Backup und notifcation on backup failure

Notfication requires a mail sender configured.

1. At line from `.contab` to `crontab -e`