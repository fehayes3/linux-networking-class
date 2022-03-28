#!/bin/bash
# B. Write a BASH script called myserver.sh that changes the hostname of your FEDORA server to whatever 
# argument you pass to the script.  For example,  <root#quantumforce># myserver.sh reflex  should modify the 
# /etc/hostname file and change it from “quantumforce” to “reflex”
echo Enter a New Host Name
read varname

echo$(sudo hostnamectl set-hostname $varname)
