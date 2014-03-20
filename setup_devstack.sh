#!/bin/sh

yum install -y git
mkdir src
cd src
git clone https://github.com/openstack-dev/devstack.git
