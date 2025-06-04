# 🔍 Nmap Secure Log Script

This script runs an Nmap scan against a specified target IP address and securely stores the scan results in a password-protected log file.

## 🚀 Features

- Prompts user for a target IP address to scan.
- Creates a `logs/` directory if it doesn't exist.
- Prompts for a password if the `logs/` directory is being created for the first time.
- Encrypts each Nmap scan result using `zip` with password protection.
- Automatically deletes the unencrypted `.log` file after encryption.
- Password is stored securely in `.log_password` inside the `logs/` folder (for reuse across scans).

## 🔒 Security Note

> The password is stored in a hidden file inside the `logs/` folder for convenience. This is not secure for production environments. Consider using GPG or another encryption tool for enhanced security.

---

## 🧰 Requirements

Make sure the following dependencies are installed:

- `nmap`
- `zip`

### Install Dependencies (Ubuntu/Debian)

    sudo apt update
    sudo apt install nmap zip -y  # Ubuntu/Debian
    sudo dnf install nmap zip -y  # Fedora
    brew install nmap zip         # macOS

### 🔧 Step 1: Clone the repo

    sudo git clone https://github.com/iamapurvapatel/Nmap-Device-Discovery-Script.git
    cd Nmap-Device-Discovery-Script

### 🔧 Step 2: Make the script executable

    sudo chmod +x nmap_device_scan.sh

### ▶️ Step 3: Run it

    sudo ./nmap_device_scan.sh
    
### It will prompt you for a target IP:

    Enter target IP address: 192.168.x.x
    [*] Scanning 192.168.x.x, output will be saved to nmap_scan_<ip>_YYYY-MM-DD_HH-MM-SS.log
    [+] Scan complete. Results saved to nmap_scan_<ip>_YYYY-MM-DD_HH-MM-SS.log

### To extract a scan result:

    unzip logs/nmap_scan_<target>_<timestamp>.log.zip


