#!/bin/bash
#a. Write a BASH script called intfcAlias.sh that will assign multiple IP addresses to the secondary server 
#interface facing Lan Segment. The following IP addresses should be created: 
#20.30.40.2/24,    20.30.40.23/24,     20.30.40.25/24,     20.30.40.80/24 

sudo ip addr add 192.168.2.105/24 dev ens224
sudo ip addr add 192.168.2.105/24 dev ens224
sudo ip addr add 192.168.2.105/24 dev ens224
