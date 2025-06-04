#!/bin/bash

read -p "Enter target IP address: " TARGET

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOGFILE="nmap_scan_$TARGET_$TIMESTAMP.log"

echo "[*] Scanning $TARGET, output will be saved to $LOGFILE"
nmap -sV --script discovery "$TARGET" -oN "$LOGFILE"
echo "[+] Scan complete. Results saved to $LOGFILE"
