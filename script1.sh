#!/bin/bash
# Script 1: System Identity Report
# Author: Pranati Vashishtha | Course: Open Source Software
# --- Variables ---
STUDENT_NAME="Pranati Vashishtha" # Fill in your name
SOFTWARE_CHOICE="Python" # Fill in your chosen software
# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# --- Additional info (completing the TODO) ---
DISTRO=$(grep "^PRETTY_NAME" /etc/os-release 2>/dev/null | cut -d= -f2 | tr -d '"')
DATE_TIME=$(date "+%A, %d %B %Y | %H:%M:%S")
LICENSE="GNU General Public License v2 (GPLv2)"
# --- Display ---
echo "=================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "=================================="
echo "Kernel : $KERNEL"
echo "User : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Distro : $DISTRO"
echo "Date : $DATE_TIME"
echo "License : The Linux Kernel is covered under the $LICENSE"
echo "Software: $SOFTWARE_CHOICE"
echo "=================================="
