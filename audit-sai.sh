#!/bin/bash
# Script 3: Disk and Permission Auditor
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp") # A list of important system directories we want to check
echo "Directory Audit Report"
echo "----------------------"
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, and group of the directory
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get size in a readable format (ignore permission errors if any)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done
# Firefox Configuration Directory Audit
MY_SOFTWARE="MySQL"  # Change this to the software you want to audit
CONFIG_DIR="/etc/mysql"  # Change this to the config directory of the software (example for MySQL)
echo ""
echo "$MY_SOFTWARE Configuration Audit"
echo "----------------------"
if [ -d "$CONFIG_DIR" ]; then
    # Get permissions, owner, and group for the Firefox config directory
    CONFIG_PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    # Get its size in a readable format
    CONFIG_SIZE=$(du -sh "$CONFIG_DIR" 2>/dev/null | cut -f1)
    echo "$CONFIG_DIR => Permissions: $CONFIG_PERMS | Size: $CONFIG_SIZE"
else
    # If Firefox config directory is not found
    echo "$CONFIG_DIR (for $MY_SOFTWARE) does not exist on this system."
fi