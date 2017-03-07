#!/usr/bin/env bash

: ${1?"Usage: $0 USER_NAME"}

htpasswd -m ${SVN_PASSWD} $1
/usr/sbin/apache2ctl restart
