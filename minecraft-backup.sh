#!/bin/bash

# maybe execute this script using "su -c [script] minecraft"

WORLDSTORAGE="/home/minecraft/minecraft-server/worlds"
BACKUPSTORAGE="/home/minecraft/backup"
NOW=$(date +"%F_%H.%M.%S")

sudo su minecraft bash -c "mkdir -p $BACKUPSTORAGE"

for NAME in $(ls ${WORLDSTORAGE})
do
	if [ -d $WORLDSTORAGE/$NAME ]
	then
		#sudo su minecraft bash -c "mkdir -p $BACKUPSTORAGE/$NAME"
		sudo su minecraft bash -c "tar -hcjf $BACKUPSTORAGE/$NAME.$NOW.tar.bz2 $WORLDSTORAGE/$NAME"
	fi
done
