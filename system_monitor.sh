#!/bin/bash

CPU=$(top -bn1 | awk '/Cpu/ {print 100 - $8}')
CPU_INT=${CPU%.*}

THRESHOLD_CPU=2

LOG="./script-logs.txt"


echo "=============================="
echo " --- Starting Monitoring Script ---"
echo "=============================="

echo "=============================="
echo " --- Your current RAM usage is ---"
echo "=============================="

free -h

echo "=============================="
echo " --- Your current CPU Cores are --- "
echo "=============================="

nproc

if [ "$CPU_INT" -gt "$THRESHOLD_CPU" ]; then 
   echo "High CPU Usage Detected on date = $(date) | Usage = ${CPU}%" | tee -a $LOG
fi

echo "=============================="
echo " --- Your current CPU usage is --- "
echo "=============================="

echo "CPU Usage: ${CPU}%"

echo "=============================="
echo " --- Your current disk usage is --- "
echo "=============================="

df -h

echo "=============================="
echo " --- END OF SCRIPT, OUTPUT WILL BE STORED IN script-logs.txt FILE --- "
echo "=============================="

