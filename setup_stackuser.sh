#!/bin/bash

# Obviously you'll want to change this to match your personal git setup

adduser stack
echo "stack   ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers

cp setup_devstack.sh /home/stack
su - stack -c "git config --global user.email \"imcleod@redhat.com\""
su - stack -c "git config --global user.name \"Ian McLeod\""
su - stack -c "bash ~/setup_devstack.sh"
