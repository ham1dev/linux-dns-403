#!/bin/bash

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="dns403.sh"

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo -e "\033[0;31mPlease run as root (use sudo)\033[0m"
  exit 1
fi

# Copy the script to /usr/local/bin and make it executable
cp "$SCRIPT_NAME" "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

echo -e "\033[0;32mInstallation complete! You can now run 'dns403' from anywhere.\033[0m"
