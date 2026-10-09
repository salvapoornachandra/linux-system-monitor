# Linux System Monitoring Script

## Project Overview

This project is a Bash-based Linux system monitoring tool designed
to monitor the health and resource usage of a Linux server.

The script collects CPU, memory, disk, uptime, user, process,
and service information and generates timestamped monitoring reports.

## Technologies Used

- Linux
- Bash Shell Scripting
- Git
- GitHub
- Cron
- systemctl

## Features

- CPU usage monitoring
- Memory usage monitoring
- Disk usage monitoring
- CPU threshold warnings
- Memory threshold warnings
- Disk threshold warnings
- System uptime monitoring
- Logged-in user monitoring
- Top CPU-consuming processes
- Top memory-consuming processes
- Nginx service monitoring
- Timestamped reports
- Cron-based automation

## Project Structure

linux-system-monitor/

├── system_monitor.sh  
├── README.md  
├── .gitignore  
└── reports/

## How to Run

Give execute permission:

```bash
chmod +x system_monitor.sh
## Sample Monitoring Report
![Monitoring Report 1](screenshots/Screenshot%202026-10-09%20080206.png)

![Monitoring Report 2](screenshots/Screenshot%202026-10-09%20080230.png)

![Monitoring Report 3](screenshots/Screenshot%202026-10-09%20080248.png)
