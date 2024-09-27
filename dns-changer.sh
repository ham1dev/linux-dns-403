#!/bin/bash

# Regular Colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# Bold Colors
BOLD_BLACK='\033[1;30m'
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD_YELLOW='\033[1;33m'
BOLD_BLUE='\033[1;34m'
BOLD_PURPLE='\033[1;35m'
BOLD_CYAN='\033[1;36m'
BOLD_WHITE='\033[1;37m'

# Reset
NC='\033[0m' # No Color

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}Please run as root (use sudo)${NC}"
  exit 1
fi

# Remove the /etc/resolv.conf if it's a symlink and create a new file
if [ -L /etc/resolv.conf ]; then
  rm /etc/resolv.conf
fi

# Create a new empty resolv.conf file
touch /etc/resolv.conf

# Backup the current /etc/resolv.conf if not already backed up
BACKUP_FILE="/etc/resolv-main.conf"
if [ ! -f "$BACKUP_FILE" ]; then
  cp /etc/resolv.conf "$BACKUP_FILE"
fi

# Display available DNS options
echo ""
echo -e "${BOLD_CYAN}Please choose a DNS option:${NC}"
echo -e "1) ${BOLD_YELLOW}403 Online${NC} [10.202.10.202, 10.202.10.102]"
echo -e "2) ${BOLD_YELLOW}Radar Game${NC} [10.202.10.10, 10.202.10.11]"
echo -e "3) ${BOLD_YELLOW}Pishgaman${NC} [5.202.100.100, 5.202.100.101]"
echo -e "4) ${BOLD_YELLOW}Shecan${NC} [178.22.122.100, 185.51.200.2]"
echo -e "5) ${BOLD_YELLOW}Begzar${NC} [185.55.226.26, 185.55.225.25]"
echo -e "6) ${BOLD_YELLOW}Electro${NC} [78.157.42.100, 78.157.42.101]"
echo -e "7) ${BOLD_RED}Restart to default${NC} (restore from resolv-main.conf)"

echo ""
read -p "$(echo -e "${BOLD_CYAN}Enter your choice (1-7): ${NC}")" option


# Update the /etc/resolv.conf based on the user's selection
case $option in
    1)
        echo "nameserver 10.202.10.202" > /etc/resolv.conf
        echo "nameserver 10.202.10.102" >> /etc/resolv.conf
        echo -e "${GREEN}403 Online DNS has been set.${NC}"
        ;;
    2)
        echo "nameserver 10.202.10.10" > /etc/resolv.conf
        echo "nameserver 10.202.10.11" >> /etc/resolv.conf
        echo -e "${GREEN}Radar Game DNS has been set.${NC}"
        ;;
    3)
        echo "nameserver 5.202.100.100" > /etc/resolv.conf
        echo "nameserver 5.202.100.101" >> /etc/resolv.conf
        echo -e "${GREEN}Pishgaman has been set.${NC}"
        ;;
    4)
        echo "nameserver 178.22.122.100" > /etc/resolv.conf
        echo "nameserver 185.51.200.2" >> /etc/resolv.conf
        echo -e "${GREEN}Shecan DNS has been set.${NC}"
        ;;
    5)
        echo "nameserver 185.55.226.26" > /etc/resolv.conf
        echo "nameserver 185.55.225.25" >> /etc/resolv.conf
        echo -e "${GREEN}Begzar DNS has been set.${NC}"
        ;;
    6)
        echo "nameserver 78.157.42.100" > /etc/resolv.conf
        echo "nameserver 78.157.42.101" >> /etc/resolv.conf
        echo -e "${GREEN}Electro DNS has been set.${NC}"
        ;;                
    7)
        if [ -f "$BACKUP_FILE" ]; then
          cp "$BACKUP_FILE" /etc/resolv.conf
          echo -e "${PURPLE}DNS settings restored to default (from resolv-main.conf).${NC}"
        else
          echo -e "${RED}No backup file found to restore defaults.${NC}"
        fi
        ;;          
    *)
        echo -e "${RED}Invalid option! Please enter a number between 1 and 7.${NC}"      
        ;;
esac
