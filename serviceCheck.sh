#!/bin/bash
# C. Write a BASH script called serviceCheck.sh that will start the check and report the status for the DHCP service, 
# the SSH service, and the VSFTP service on the Fedora Server.  Hint: use systemctl --no-pager option to allow the 
# output to fully flow.
systemctl status dhcpd.service --no-pager
sudo systemctl status sshd --no-pager
systemctl status vsftpd --no-pager
