. /home/pi/paperless/.blobfuse-env.sh

CACHE_DIR="/mnt/usbdisk/blobfusecache/paperless"

if ! mountpoint -q /mnt/paperless-backup/; then
    if [ -d "$CACHE_DIR" ] && [ "$(ls -A "$CACHE_DIR")" ]; then
        echo "Cache directory not empty, cleaning..."
        rm -r "$CACHE_DIR"/*
    fi
    echo "paperless mount point not mounted, mounting..."
    blobfuse2 --allow-other --config-file=/home/pi/paperless/blobFuseConfig.yaml /mnt/paperless-backup/
fi