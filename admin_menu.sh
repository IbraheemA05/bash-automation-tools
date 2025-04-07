#/bin/bash

echo " Choose what you want to do"
echo "1: Update and Upgrade"
echo "2: Cleaning of log's file"
echo "3:Backing up a folder and documents"

read -p "Enter Options..." choice

case $choice in
  1) ./scripts/automationn.sh ;;
  2) ./scripts/cleaning_log.sh ;;
  3) ./scripts/backup.sh ;;
  *) echo "invalid option." ;;
esac
