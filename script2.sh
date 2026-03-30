#!/bin/bash 
# Script 2: FOSS Package Inspector 
# Author: Pranati Vashishtha | Course: Open Source Software 
PACKAGE="python3" # e.g., httpd, mysql, vlc, firefox 
# Check if package is installed 
if dpkg -l $PACKAGE &>/dev/null; then 
echo "$PACKAGE is installed." 
dpkg -l $PACKAGE | grep -E 'Version|License|Summary' 
else 
echo "$PACKAGE is NOT installed." 
fi 
# Case statement that prints a one-line philosophy note based on package name 
case $PACKAGE in 
httpd) echo "Apache: The web server that built the open internet." ;; 
mysql) echo "MySQL: Open source at the heart of millions of apps." ;; 
python3) echo "Python: A versatile, beginner-friendly open source language powering science, web, and AI." ;; 
git) echo "Git: The open source backbone of modern software collaboration." ;; 
firefox) echo "Firefox: A free and open source browser built for privacy and the open web." ;; 
*) echo "$PACKAGE: A valuable open source tool in the Linux ecosystem." ;; 
esac
