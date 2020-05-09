# Homeseer-Tools
v 0.1 5/9/20 - Initial Issue

This repository is for various scripts and tools that I use with my HomeSeer setup.

Currently for use with HS3, but should work with HS4 unless otherwise noted.

Note: Some of the scripts provided here were posted by user "chaos215bar2" found on the HomeSeer forums.  Specifically;
- install-hs3.sh and the HomeSeer-manager scripts
https://forums.homeseer.com/forum/homeseer-products-services/system-software-controllers/hs3-hs3pro-software/hs3-hs3pro-discussion/109702-hs3-linux-ubuntu-18-04-server?p=1308184#post1308184

# hs-banner.sh
This is a bash script to display an information banner on login. I have it added to my .bashrc to serve as a reminder that I have logged into my Production machine and take care with making changes.

# install-hs3.sh
This will "install" the homeseer.service into systemd.  Make sure that you have gone through and updated working directories as needed.  This does NOT install the HomeSeer 3 Linux binaries.  It is assumed that the user has already downloaded the necessary binaries and installed them.

IMPORTANT: The user should modify the directories defined in the script to match their system.  My current system is installed in the /opt directory.  Edit the script to match your system.

# HomeSeer-manager directory
This directory contains three scripts to allow the Linux version of HomeSeer to be gracefully shutdown and restarted by the menu system on the web interface.

IMPORTANT: The user should modify the directories defined in the scripts to match their system.  My current system is installed in the /opt directory.  Edit the script to match your system.

# hold-mono.sh and unhold-mono.sh
In the past, Mono updates have been known to introduce problems with HomeSeer and its generally a good idea to make sure a new update to Mono has been fully vetted before installing on your production system.  Each script does as its title suggests: hold-mono.sh will mark mono-complete and mono-vbnc as held and will not be included in updates.  The unhold-mono.sh script will unmark them and allow the user to update.  After update is complete, hold-mono.sh can be run again.
