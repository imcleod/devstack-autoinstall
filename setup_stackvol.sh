#!/bin/bash

# This is very specific to my cobbler setup.
# My kickstarts create a stackvolume LV.  The easiest way to do this
# is to have the volume mounted after install.  The script below just
# undoes the fstab entry and unmounts the mount, leaving the volume
# available for devstack to use at install time.

# CHANGE TO MATCH YOUR SETUP _or_
# Manually create a stackvol before doing your automation

# Undo the data directory
umount /datatemp
grep -v datatemp /etc/fstab > /etc/fstab.tmp
mv /etc/fstab.tmp /etc/fstab

# Make stack-volumes
pvcreate /dev/md11
vgcreate stack-volumes /dev/md11

