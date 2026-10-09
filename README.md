# Linux System Monitoring Script

## Project Overview

This project is a Bash-based Linux system monitoring tool designed to monitor the health and resource usage of a Linux server.

The script collects CPU, memory, disk, uptime, user, process, and service information and generates timestamped monitoring reports.

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

```text
linux-system-monitor/
├── system_monitor.sh
├── README.md
├── .gitignore
├── reports/
└── screenshots/
    ├── Screenshot 2026-10-09 080206.png
    ├── Screenshot 2026-10-09 080230.png
    ├── Screenshot 2026-10-09 080248.png
    └── monitoring-report1.png
```

## How to Run

Give execute permission to the script:

```bash
chmod 755 system_monitor.sh
```

Run the monitoring script:

```bash
./system_monitor.sh
```

## Sample Monitoring Report

### Screenshot 1

![Monitoring Report 1](screenshots/Screenshot%202026-10-09%20080206.png)

### Screenshot 2

![Monitoring Report 2](screenshots/Screenshot%202026-10-09%20080230.png)

### Screenshot 3

![Monitoring Report 3](screenshots/Screenshot%202026-10-09%20080248.png)
