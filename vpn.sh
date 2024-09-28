#! /bin/bash
echo " "
echo " "
echo "++++++++++++++++++++++++++++"
echo "| HTB OpenVPNTunnel Script |"
echo "++++++++++++++++++++++++++++"
sleep 1
echo " "
echo "WARNING removing downloads ending in .ovpn, press enter to continue"
read
rm -f /mnt/c/Users/Owner/Downloads/* | grep *.ovpn
sleep 1
echo " "
echo "WARNING make sure to redownload vpn config file, press enter to continue"
read
sleep 1
echo " "
echo "Getting target..."
sleep 1
Target=$(ls /mnt/c/Users/Owner/Downloads/*)
vpn=$(basename ${Target})
sleep 1
echo " "
echo "removing old tunnel..."
rm -f /home/dubwubz/HTB/openvpnlab/*
sleep 1
echo " "
echo "replacing tunnel..."
mv $Target /home/dubwubz/HTB/openvpnlab/
sleep 1
echo " "
echo "All done!"
sudo openvpn $vpn