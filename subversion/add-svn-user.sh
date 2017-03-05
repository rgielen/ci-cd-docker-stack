#!/usr/bin/env bash

: ${1?"Usage: $0 USER_NAME"}

htpasswd -cm ${SVN_PASSWD} $1
/usr/sbin/apache2ctl restart
