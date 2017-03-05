#!/usr/bin/env bash

: ${1?"Usage: $0 PROJECT_NAME"}

OLD_DIR=$(pwd)

cd ${SVN_HOME}
svnadmin create $1
chown -R www-data:www-data $1
/usr/sbin/apache2ctl restart

cd ${OLD_DIR}
