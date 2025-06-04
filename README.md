# 🔍 Nmap Device Discovery Script

A lightweight Bash script that scans a target IP address using Nmap's `discovery` scripts to help identify what kind of device it is (e.g., camera, printer, router, Windows PC, etc.).  
Each scan is automatically saved to a timestamped log file for easy archiving and review.

---

## 📁 Project Structure

├── nmap_device_scan.sh # Main script

└── logs/ # (Optional) Store all scan outputs here

---

## 🛠️ Features

- Prompts you for a target IP interactively
- Uses `nmap -sV --script discovery` for deep service fingerprinting
- Saves results to a log file named like:  
  `nmap_scan_<ip>_YYYY-MM-DD_HH-MM-SS.log`
- Simple, beginner-friendly Bash code

---

## 🚀 Getting Started

### 🔧 Prerequisites

- Linux or macOS terminal (or WSL on Windows)
- `nmap` must be installed  
  Install with:
  ```bash
  sudo apt install nmap   # Ubuntu/Debian
  sudo dnf install nmap   # Fedora
  brew install nmap       # macOS

## 🔧 Step 1: Clone the repo

    sudo git clone https://github.com/iamapurvapatel/Nmap-Device-Discovery-Script.git
    cd Nmap-Device-Discovery-Script

## 🔧 Step 2: Make the script executable

    sudo chmod +x nmap_device_scan.sh

## ▶️ Step 3: Run it

    sudo ./nmap_device_scan.sh
    
### It will prompt you for a target IP:

    Enter target IP address: 192.168.x.x
    [*] Scanning 192.168.x.x, output will be saved to nmap_scan_<ip>_YYYY-MM-DD_HH-MM-SS.log
    [+] Scan complete. Results saved to nmap_scan_<ip>_YYYY-MM-DD_HH-MM-SS.log
