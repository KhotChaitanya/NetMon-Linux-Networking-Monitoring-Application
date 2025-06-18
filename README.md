
# Linux Network Monitoring Script (Enhanced Version)

An enhanced Bash script tool to monitor essential **network & system health** parameters on **Linux (Kali tested)** systems.  
Tracks real-time **network usage**, **top bandwidth processes**, **ping health**, and **basic CPU/RAM status**.

Built for lightweight system monitoring needs.

---

## Tech Stack
- **Bash Scripting**
- **Linux Networking Tools:** `ifstat`, `ping`, `ss`, `top`
- **Tested OS:** Kali Linux, Ubuntu

---

## Features
- Show **Network Upload/Download Speed**
- List **Top 5 Bandwidth-Consuming Processes**
- Check **Ping Status** (default `8.8.8.8`)
- Monitor **CPU** & **RAM** usage stats
- Clean, minimal CLI output

---

## Script File

Save the script as ➡️ `network_monitor_v2.sh`  

```bash
# Make script executable
chmod +x network_monitor_v2.sh

# Run the script
./network_monitor_v2.sh
```

---

## Sample Output

```
========== Network Monitoring =========
Download Speed:  1.23 Mbit/s
Upload Speed:    0.56 Mbit/s

========== Top 5 Bandwidth Processes =========
PID    USER    COMMAND    BANDWIDTH
1234   root    firefox    500 Kbit/s
...

========== Ping Test =========
8.8.8.8 is reachable (20 ms avg)

========== CPU and RAM Stats =========
CPU Usage:  35%
RAM Usage:  45%
```

---
## Output

![netmon](https://github.com/user-attachments/assets/5627bbe1-e8e0-43cd-aba3-e73ae31ce1cd)

---

## How It Works
- Uses `ifstat` for live bandwidth stats
- `ss` tool to map active network processes
- `ping` health check to external server
- `top` command for CPU/RAM utilization

---

## Skills Gained
- Linux Network Commands
- Bash Scripting Automation
- System Monitoring Basics
- Lightweight CLI tool building

---

## 🔗 Connect
This project is part of my portfolio — showcased on **GitHub** & **LinkedIn**.

---
