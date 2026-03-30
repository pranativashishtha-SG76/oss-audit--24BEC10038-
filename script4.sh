#!/bin/bash 
# Script 4: Log File Analyzer 
# Author: Pranati Vashishtha | Course: Open Source Software 
# Usage: ./log_analyzer.sh /var/log/messages 
LOGFILE=$1 
KEYWORD=${2:-"error"} # Default keyword is 'error' 
COUNT=0 
if [ ! -f "$LOGFILE" ]; then 
echo "Error: File $LOGFILE not found." 
exit 1 
fi 
while IFS= read -r LINE; do 
if echo "$LINE" | grep -iq "$KEYWORD"; then 
COUNT=$((COUNT + 1)) 
fi 
done < "$LOGFILE" 
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE" 
# --- TODO Completed --- 
# 1. Do-while style retry if the file is empty 
if [ ! -s "$LOGFILE" ]; then 
echo "Warning: $LOGFILE is empty. Please provide a valid log file." 
read -p "Enter a new log file path: " LOGFILE 
if [ ! -f "$LOGFILE" ]; then 
echo "Error: File $LOGFILE not found. Exiting." 
exit 1 
fi 
fi 
# 2. Print the last 5 matching lines using tail + grep 
echo "" 
echo "--- Last 5 lines containing '$KEYWORD' ---" 
grep -i "$KEYWORD" "$LOGFILE" | tail -5 
echo "-------------------------------------------"
