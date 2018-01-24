#!/usr/bin/env bash

BIN_DIR=$(dirname $0)
. $BIN_DIR/setenv.sh

cd $CONFIG_DIR

# with local time
# NOW=date -u +"%Y-%m-%dT%H:%M:%SZ"
# with offset
NOW=$(date +%Y-%m-%dT%H:%M:%S%z)
mkdir -p $JENKINS_BACKUP_DIR



echo +++ Perfoming Jenkins backup +++
echo Backing up $JENKINS_CONTAINER_ID ...
docker exec -i $JENKINS_CONTAINER_ID tar --exclude $JENKINS_HOME/plugins --exclude $JENKINS_HOME/.m2 -cOvj $JENKINS_HOME > "$JENKINS_BACKUP_DIR/$NOW.tar.bz2"
ln -s $JENKINS_BACKUP_DIR/$NOW.tar.bz2 $BACKUP_DIR/$JENKINS_CONTAINER_ID.tar.bz2
echo +++ Jenkins backups done+++
echo

cd $ORIGINAL_WD
