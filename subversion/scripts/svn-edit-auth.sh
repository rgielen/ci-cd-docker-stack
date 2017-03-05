#!/usr/bin/env bash

if [ ! -e "${SVN_AUTHFILE}" ]; then
    cp /dav_svn.authz.sample ${SVN_AUTHFILE}
fi

nano ${SVN_AUTHFILE}
/usr/sbin/apache2ctl restart
