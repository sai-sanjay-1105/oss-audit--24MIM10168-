#!/bin/bash
# 1. About - System Information
# checks for the Linux OS distribution (fallback if the file is missing)
if [ -f /etc/os-release ]; then
    source /etc/os-release
    DISTRO_NAME=$PRETTY_NAME
else
    DISTRO_NAME=$(uname -s)
fi
KERNEL_VERSION=$(uname -r)
CURRENT_USER="Bvaak"
HOME_DIR=$HOME
SYSTEM_UPTIME=$(uptime -p ) # Removes "up" for nuetral language
CURRENT_DATE=$(date +"%A, %B %d, %Y, %r")
STUDENT_NAME="S SAI SANJAY"
SOFTWARE_CHOICE="MySQL"
# 3. Output - Display the Welcome Screen  
echo -e "============================================================="
echo -e "   Open Source Audit - $STUDENT_NAME"
echo -e "   $Welcome to your Linux System"
echo -e "============================================================="
echo ""
echo -e "  $OS Distribution :  $DISTRO_NAME"
echo -e "  $Kernel Version  :  $KERNEL_VERSION"
echo ""
echo -e "  User : $CURRENT_USER"
echo -e "  System Uptime   :  $SYSTEM_UPTIME"
echo -e "  Current Time    :  $CURRENT_DATE"
echo ""
echo -e "============================================================="
echo -e "  License Information:"
echo -e "  the current operating system used is linux , the linux kernel is licensed"
echo -e "  under the GNU General Public License (GPL)."
echo -e "============================================================="
echo ""
