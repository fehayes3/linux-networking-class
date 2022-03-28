!#/bin/bash
# D. On your Ubuntu client, using the GUI interface, navigate to the WIRED settings on the ethernet interface.  Under 
# the main tab of DETAILS, be sure the “Connect Automatically” option is checked.  This will ensure that the 
# ethernet kernel driver remains persistently active.  Next write a simple BASH script called bounce.sh that will 
# shut down and then bring back up the interface (presumably called ens33) 
sudo ifconfig ens33 down

sudo ifconfig ens33 up
