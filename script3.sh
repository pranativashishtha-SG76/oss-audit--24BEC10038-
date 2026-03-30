#!/bin/bash 
# Script 3: Disk and Permission Auditor 
# Author: Pranati Vashishtha | Course: Open Source Software 
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp") 
echo "Directory Audit Report" 
echo "--------------------------" 
for DIR in "${DIRS[@]}"; do 
if [ -d "$DIR" ]; then 
PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}') 
SIZE=$(du -sh $DIR 2>/dev/null | cut -f1) 
echo "$DIR => Permissions: $PERMS | Size: $SIZE" 
else 
echo "$DIR does not exist on this system" 
fi 
done 
# --- TODO Completed --- 
# Check if Python's config directory exists and print its permissions 
echo "" 
echo "--- Python Software Config Directory Check ---" 
PYTHON_DIRS=("/etc/python3" "/usr/lib/python3" "/usr/local/lib/python3" "/usr/lib/python3/dist-packages") 
for PDIR in "${PYTHON_DIRS[@]}"; do 
if [ -d "$PDIR" ]; then 
PERMS=$(ls -ld "$PDIR" | awk '{print $1, $3, $4}') 
SIZE=$(du -sh "$PDIR" 2>/dev/null | cut -f1) 
echo "$PDIR => Permissions: $PERMS | Size: $SIZE" 
else 
echo "$PDIR does not exist on this system" 
fi 
done 
echo "--------------------------" 
echo "Audit Complete."
