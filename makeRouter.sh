#!/bin/bash
# On slide 16 and 17 of the Chapter 13 Networking course slide deck there are commands that can be used to 
# convert a Linux Host into a forwarding router.  Write a script called makeRouter.sh that will perform this 
# conversion.  The commands you would use are shown below. Argument 1 in the external network interface (e.g. 
# NAT interface) and Argument 2 is the internal network interface (e.g. LAN segment 1)  You don’t have to test 
# this script as we will continue editing this script in the next assignment.  If you do decide to test the script, be sure 
# to create a SNAPshot of your Fedora Server before experimenting so that you can revert to your working system 
# after testing. 
#!/bin/bash
echo Enter a Internal Network Interface
read varname
echo Enter the External Network Interface
read varname1
echo$(sudo hostnamectl set-hostname $varname)
echo$( ifconfig  $varname 20.30.40.1
 ifconfig  $varname netmask 255.255.255.0 
 ifconfig  $varname broadcast 20.30.40.255
 echo “1” >  /proc/sys/net/ipv4/ip_forward
 iptables -A FORWARD -i $varname1 -j ACCEPT         
 iptables -A FORWARD -o $varname1 -j ACCEPT        
 iptables -t nat -A POSTROUTING -o $varname1 -j MASQUERADE)
