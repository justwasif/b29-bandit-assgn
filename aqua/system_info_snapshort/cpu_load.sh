#!/bin/bash


cpu_load=$(uptime | awk -F'load average:' '{print $2}')
ram_usage=$(free -h | awk '/Mem:/ {print $3 " / " $2}')
disk_usage=$(df -h / | awk 'NR==2 {print $5}')

echo "cpu: $cpu_load"
echo "ram: $ram_usage"
echo "disk: $disk_usage"
