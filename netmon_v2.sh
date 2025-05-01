#!/bin/bash

echo "============================================================="
echo "      NetMon: Simple Linux Network Monitoring Script"
echo "============================================================="
echo ""

# 1. Internet Connection Check
echo "[+] Checking Internet Connection..."
ping -c 2 8.8.8.8 > /dev/null 2>&1 && echo "✅ Internet is Working" || echo "❌ Internet NOT Working"
echo ""

# 2. IP, Gateway, DNS Details
echo "[+] Network Configuration:"
ip addr show | grep "inet " | grep -v "127.0.0.1"
echo ""
echo "Default Gateway: $(ip route | grep default | awk '{print $3}')"
echo "DNS Servers: "
cat /etc/resolv.conf | grep "nameserver"
echo ""

# 3. Active Connections
echo "[+] Active Network Connections (Top 5):"
ss -tunap | head -n 10
echo ""

# 4. Speed Test (Optional)
if command -v speedtest-cli &> /dev/null
then
    echo "[+] Running Speed Test (May take few seconds)..."
    speedtest-cli --simple
else
    echo "[!] Speedtest-cli NOT installed. Run: sudo apt install speedtest-cli"
fi
echo ""

# 5. Packet Loss Summary (Ping Google)
echo "[+] Ping Packet Loss Summary:"
ping -c 10 8.8.8.8 | tail -2
echo ""

# 6. Live Bandwidth Usage (10 seconds)
echo "[+] Bandwidth Usage (10 sec sample):"
if command -v ifstat &> /dev/null
then
    ifstat 1 10
else
    echo "[!] ifstat NOT installed. Run: sudo apt install ifstat"
fi
echo ""

# 7. Top 5 Network Using Processes
echo "[+] Top 5 Network Using Processes:"
netstat -plant | grep ESTABLISHED | head -5
echo ""

# 8. Save Report
echo "[+] Saving Report to netmon_report.txt"
{
    date
    echo "Internet Check Done"
    ip addr show | grep "inet " | grep -v "127.0.0.1"
} >> netmon_report.txt
echo "Done ✅"
