sudo mount /dev/sda1
/usr/bin/docker compose -f /home/pi/paperless/docker-compose.yaml up backupdb backupfiles
sudo umount /dev/sda1