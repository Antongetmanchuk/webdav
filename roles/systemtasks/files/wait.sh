#!/usr/bin/env bash
#while ! grep "$(date -d -1hour +"%b %d")" /var/log/cloud-init.log | grep "Cloud-init .* finished"; do sleep 2; done
#sleep 2m
#while fuser /var/lib/dpkg/lock >/dev/null 2>&1 ; do sleep 1; done
sleep 10
while sudo fuser /var/lib/dpkg/lock >/dev/null 2>&1 ; do sleep 1; done
sleep 10
while sudo fuser /var/lib/dpkg/lock >/dev/null 2>&1 ; do sleep 1; done
sleep 10
while sudo fuser /var/lib/dpkg/lock >/dev/null 2>&1 ; do sleep 1; done


