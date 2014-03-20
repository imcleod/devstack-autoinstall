#!/bin/sh

# These are services available from native Fedora packages
# devstack.sh starts these if they are not running but does not
# ensure that they start on reboot, hence the chkconfigs
# TODO: Yes, these are not systemd commands - they still work
#       FIX

#/sbin/service httpd start
/sbin/chkconfig httpd on
#/sbin/service mariadb start
/sbin/chkconfig mariadb on
#/sbin/service tgtd start
/sbin/chkconfig tgtd on
#/sbin/service rabbitmq-server start
/sbin/chkconfig rabbitmq-server on

/sbin/service firewalld stop
/sbin/chkconfig firewalld off
