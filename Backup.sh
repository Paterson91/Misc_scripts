#!/bin/bash

dest="/mnt/Backup/."

sudo rsync -aogAXcv --delete \
--exclude=/dev/* --exclude=/proc/* \
--exclude=/sys/* --exclude=/tmp/* \
--exclude=/run/* --exclude=/mnt/* \
--exclude=/media/* --exclude="swapfile" \
--exclude="lost+found" --exclude=".cache" \
--exclude="Downloads" --exclude=".VirtualBoxVMs" \
--exclude=".ecryptfs" \
--exclude="/home/flow/FlowData/UserData/" \
/ $dest

backup_date=$(date)

echo "${backup_date} Backup Successful" >> Backup.log

if [ "$?" = "0" ]; then
        printf "$date Backup Successful" >> Backup.log
else
         echo "$date Backup Unsuccessful" >> Backup.log
        exit 1
fi
