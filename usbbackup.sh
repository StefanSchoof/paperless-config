# enable the led on the raspberry pi to indicate that the backup is in progress
echo none | sudo tee /sys/class/leds/PWR/trigger
echo 1 | sudo tee /sys/class/leds/PWR/brightness

sudo mount /dev/sda1
/usr/bin/docker compose -f /home/pi/paperless/docker-compose.yaml up backupdb backupfiles
sudo umount /dev/sda1

# disable the led on the raspberry pi to indicate that the backup is complete
echo mmc0 | sudo tee /sys/class/leds/PWR/trigger