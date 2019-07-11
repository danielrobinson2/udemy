#!/bin/bash
#Define separator function
separator () { echo "================================"; }

separator
systemctl status ntpd
systemctl status sshd
systemctl status snmpd

separator
yum install cowsay
yum info cowsay

separator
journalctl | tail
