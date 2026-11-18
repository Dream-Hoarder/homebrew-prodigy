#!/usr/bin/env bash
set -euo pipefail

VERSION="1.0.0 [SEC-HARDEN]"

case "${1:-help}" in
  --version|-v)
    echo "sec-audit ${VERSION}"
    exit 0
    ;;
  linux)
    echo "[*] Auditing Linux kernel modules, mounts, and firewall..."
    lsmod | grep -E "usb_storage|firewire_core" || echo "[+] Restricted modules not loaded."
    mount | grep -E "/tmp|/home" || true
    if command -v nft &> /dev/null; then sudo nft list ruleset; elif command -v ufw &> /dev/null; then sudo ufw status verbose; fi
    ;;
  android)
    echo "[*] Auditing Android device via ADB (packages, UIDs, broadcasts)..."
    command -v adb >/dev/null 2>&1 || { echo "adb not installed"; exit 1; }
    adb devices -l
    adb shell pm list packages -f -U
    ;;
  *)
    echo "Usage: sec-audit [linux|android|--version]"
    ;;
esac
