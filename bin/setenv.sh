#!/usr/bin/env bash

BIN_DIR=$(dirname $0)
ORIGINAL_WD=$(pwd)
cd $BIN_DIR/..

CONFIG_DIR=$(pwd)
CONFIG_NAME=$(basename $CONFIG_DIR)

NEXUS_CONTAINER_NAME=$(docker-compose ps -q ci-training_nexus)
GITLAB_CONTAINER_NAME=$(docker-compose ps -q ci-training_gitlab)
JENKINS_CONTAINER_NAME=$(docker-compose ps -q ci-training_jenkins)

JENKINS_HOME=/var/jenkins_home

cd ${ORIGINAL_WD}

DATAVOLUMES_DIR_NAME=data-volumes
BACKUP_DIR=$HOME/docker-backups
mkdir -p $BACKUP_DIR
chmod 700 $BACKUP_DIR
chmod g+s $BACKUP_DIR

NEXUS_BACKUP_DIR=$BACKUP_DIR/$NEXUS_CONTAINER_NAME
