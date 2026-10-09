#!/bin/bash

#Linux System Monitoring Script

REPORT_DIR="reports"
REPORT_FILE="$REPORT_DIR/system_report_$(date +%Y%m%d_%H%M%S).log"

CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80

mkdir -p "$REPORT_DIR"

exec > "$REPORT_FILE" 2>&1

echo "LINUX SYSTEM MONITOR"

echo
echo "Date and Time:"
date

echo
echo "Hostname:"
hostname

echo
echo "Operating System:"
grep PRETTY_NAME /etc/os-release

echo
echo "System Uptime:"
uptime

echo
echo "CPU Monitoring:"
echo "---"

CPU_USAGE=$(top -bn1 | awk '/Cpu\(s\)/ {print 100 - $8}')
CPU_USAGE=${CPU_USAGE%.*}

echo "CPU Usage: $CPU_USAGE%"

if [ "$CPU_USAGE" -gt "$CPU_THRESHOLD" ]; then
    echo "CPU Status: WARNING - High CPU usage!"
else
    echo "CPU Status: NORMAL"
fi

echo
echo "Memory Monitoring:"
echo "---"

MEMORY_USAGE=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

echo "Memory Usage: $MEMORY_USAGE%"

if [ "$MEMORY_USAGE" -gt "$MEMORY_THRESHOLD" ]; then
    echo "Memory Status: WARNING - High memory usage!"
else
    echo "Memory Status: NORMAL"
fi

echo
echo "Disk Monitoring:"
echo "---"

DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Disk Usage: $DISK_USAGE%"

if [ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ]; then
    echo "Disk Status: WARNING - High disk usage!"
else
    echo "Disk Status: NORMAL"
fi

echo
echo "Logged-in Users:"
echo "---"
who

echo
echo "Top CPU-consuming Processes:"
echo "---"
ps aux --sort=-%cpu | head -10

echo
echo "Top Memory-consuming Processes:"
echo "---"
ps aux --sort=-%mem | head -10

echo
echo "Disk Information:"
echo "---"
df -h

echo
echo "Memory Information:"
echo "---"
free -h

echo
echo "Nginx Service Status:"
echo "---"
NGINX_STATUS=$(systemctl is-active nginx)

echo "Nginx Status: $NGINX_STATUS"

if [ "$NGINX_STATUS" = "active" ]; then
    echo "Nginx is RUNNING"
else
    echo "Nginx is NOT RUNNING"
fi

echo
echo "MONITORING COMPLETED"
echo
echo "Report saved to:"
echo "$REPORT_FILE"
