#!/bin/bash
# Displays external and internal IP addresses
# Place in PATH as `ips` or create alias to file location

# Colors
CYAN='\033[4;36m'
GREEN='\033[4;32m'
OFF='\033[0m'

# External ip
echo
echo -e "${CYAN}External ip:${OFF}"
curl https://ipecho.net/plain ; echo

# LAN ips
echo
echo -e "${GREEN}LAN ips:${OFF}"
ip a | grep 'inet ' | awk '{print $2}' | sed '/127.0.0.1\/8/d'
echo

exit 0
