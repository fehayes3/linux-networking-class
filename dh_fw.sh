#!/bin/bash 
#A. Write a BASH script called dh_fw.sh that will start the DHCP service on the Fedora Server and invoke the 
# IPTABLES network masquerading function on the primary Internet facing interface. 

echo $(systemctl start dhcpd.service)

echo $(iptables -t nat -A POSTROUTING -o ens160 -j MASQUERADE)  

