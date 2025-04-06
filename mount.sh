. /home/pi/paperless/.blobfuse-env.sh
if ! mountpoint -q /mnt/paperless-backup/; then
    echo "paperless mount point not mounted, mounting..."
    blobfuse2 --allow-other --config-file=/home/pi/paperless/blobFuseConfig.yaml /mnt/paperless-backup/
fi