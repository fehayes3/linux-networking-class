#!/bin/bash
#Create a BASH shell that will convert the DNS domain configuration files from the “example.org” 
#domain to a domain specified as the input argument to the script.  For example, your script will replace all 
#instances of example.org in the target files /var/named/example.org.db, /var/named/example.org.rev, and 
#/etc/named.conf with YOUR domain name. The new files that are written should be specific to your new 
#domain.  For example if the new domain is “quantum.net” you would write the new files called 
#quantum.net.db and quantum.net.rev.  The original existing files (example.org.db, example.org.rev, and 
#named.conf) should be preserved (not be overwritten or modified in any way). Consider testing your 
#script on some sample files in a directory you create to verify the script is working properly before you try 
#and modify the true target files. 


echo Enter a New Domain Name
read varname
echo$(cp  /var/named/example.org.db /var/named/$varname.db)
# Assign the filename
filename="/var/named/$varname.db"
# Swap the names in the file
sed -i "s/example.org/$varname/" $filename

echo$(cp  /var/named/example.org.rev /var/named/$varname.rev)
# Assign the filename
filename="/var/named/$varname.rev"
# Swap the names in the file
sed -i "s/example.org/$varname/" $filename

echo$(cp  /etc/named.conf /etc/$varname.named.conf)
# Assign the filename
filename="/etc/$varname.named.conf"
# Swap the names in the file
sed -i "s/example.org/$varname/" $filename

