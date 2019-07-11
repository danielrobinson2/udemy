#!/bin/bash
#Define separator function
separator () { echo "================================"; }

#Get status info on services
separator
systemctl status ntpd
systemctl status sshd
systemctl status snmpd

#Install and get info of cowsay
separator
yum install cowsay
yum info cowsay

#Grab last 10 lines of journal
separator
journalctl | tail
