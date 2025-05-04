#!/bin/bash
#LOGFILE="/usr/local/bin/scriptdiario/$(date +%%d-%%m-%%Y_%%H-%%M)h-scriptdiario.txt"
LOGFILE="$(date +%d-%m-%Y_%H)h-scriptdiario.txt"

echo "Sistema iniciado às $(date)" >> "$LOGFILE"

echo "UPDATE...." >> "$LOGFILE" 2>&1
sudo apt update >> "$LOGFILE" 2>&1


echo "UPGRADE -Y..." >> "$LOGFILE" 2>&1
sudo apt upgrade -y >> "$LOGFILE" 2>&1

echo "AUTOREMOVE -Y..." >> "$LOGFILE" 2>&1
sudo apt autoremove -y >> "$LOGFILE" 2>&1


