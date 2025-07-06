#!/bin/bash

echo""

echo "┳┏┓  ┏┓┓"       
echo "┃┃┃━━┃┓┃┏┓┏┏┏┓┏"
echo "┻┣┛  ┗┛┗┗┻┛┛┗ ┛"

echo "use Ctrl+C to exit!"
read -p "Enter number of iterations for IP change:" ipn


               


echo ""
while [ $ipn -ge 1 ] ;
do
    sudo ifconfig eth0 down
    sleep 1
    sudo macchanger -r eth0
    sleep 1
    sudo ifconfig eth0 up
    sleep 1
    sudo dhclient eth0 
    sleep 6
    ((ipn--))
    sleep 1
done
echo "Done!"

