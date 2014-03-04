#!/bin/bash

. ~/src/devstack/localrc

/sbin/service rabbitmq-server stop
/sbin/service rabbitmq-server start
sleep 10
/sbin/service rabbitmq-server stop
/sbin/service rabbitmq-server start
sleep 10

rabbitmqctl change_password guest $RABBIT_PASSWORD
