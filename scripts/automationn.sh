#/bin/bash

#To update and upgrade the system

echo " Ready to updatating and upgrading your system "

sudo apt update && sudo apt upgrade -y

#To clean after installation

echo "cleaning up the mess on ground...."

sudo apt-get autoremove
