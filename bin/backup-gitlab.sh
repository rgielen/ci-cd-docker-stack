#!/usr/bin/env bash

BIN_DIR=$(dirname $0)
. $BIN_DIR/setenv.sh

cd $CONFIG_DIR

echo +++ Perfoming GitLab backup +++
echo Backing up $GITLAB_CONTAINER_ID ...
docker exec -t $GITLAB_CONTAINER_ID gitlab-rake gitlab:backup:create
echo +++ GitLab backups done+++
echo

cd $ORIGINAL_WD
