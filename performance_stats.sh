#!/bin/bash

# Basic server performance stats analyzer

echo "==== Server Performance Stats ===="

# CPU Usage
echo -e "\n>> CPU Usage:"
mpstat | grep -A 5 "CPU" || echo "Install 'sysstat' for detailed CPU stats."

# Memory Usage
echo -e "\n>> Memory Usage:"
free -h

# Disk Usage
echo -e "\n>> Disk Usage:"
df -h

# Network Statistics
echo -e "\n>> Network Statistics:"
ifstat -t || echo "Install 'ifstat' for detailed network stats."

# Uptime
echo -e "\n>> Server Uptime:"
uptime

# Top 5 CPU-consuming processes
echo -e "\n>> Top 5 CPU-consuming processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
