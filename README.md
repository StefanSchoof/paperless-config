# My Paperless config

## USB Backup

A udev rule that runs on usb connect. Shows via led that it is running.

1. Copy `paperless-usbbackup` to `/usr/local/bin/` and `99-backup.rules` to `/etc/udev/rules.d/`.
2. Add this entry to `/etc/fstab`: `UUID=76E8-CACF /mnt/usb exfat noauto,nofail,uid=pi,gid=pi,iocharset=utf8 0 0`
3. Reload systemd and udev with `sudo systemctl daemon-reload` and `sudo udevadm control --reload-rules`.
4. Initialize the repository once with `sudo borgmatic --config /etc/borgmatic.d/usbstick.yaml repo-create --encryption repokey-blake2 --repository /mnt/usb/borg --make-parent-dirs`.

The udev rule starts the backup when the stick with UUID `76E8-CACF` is connected. The script mounts it at `/mnt/usb` and writes the Borg repository to `/mnt/usb/borg`.
Keep a separate backup of the Borg key as well as the configured passphrase; both are needed to restore data.

## Azure Backup und notifcation on backup failure

Notfication requires a mail sender configured.

1. At line from `.contab` to `crontab -e`

`.blobfuse-env.sh`

```
export AZURE_STORAGE_ACCOUNT=
export AZURE_STORAGE_SPN_CLIENT_ID=
export AZURE_STORAGE_SPN_TENANT_ID=
export AZURE_STORAGE_SPN_CLIENT_SECRET=
```

`.borg-passphrase` a file with the borg backup passphrase.