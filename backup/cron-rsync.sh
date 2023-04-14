#!/bin/bash

#/home/user-backup/cron-rsync.sh
# on sausage-store host

rsync -azvh /opt/log/sausage-store-backend.log user-backup@evgenii-frantsuzov-15-11-backup.ru-central1.internal:/opt/backup/$(date +"%Hhour-%d-%m-%Y")/
touch /home/user-backup/cronWorks.log
