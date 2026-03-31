#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="MySQL"  # Change this to the package you want to check
# I chose MySQL since it’s a well-known open-source database
# We’ll use RPM to check whether it is installed on the system
# Check if the package is installed (works on RPM-based systems)
if rpm -q "$PACKAGE" &>/dev/null; then
    # If it's installed, show a few basic details about it
    echo "$PACKAGE is installed."
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi
# Use a case statement to print a short description of the software
# This gives a quick idea of what each package is used for
case $PACKAGE in
    httpd) 
        echo "Apache: the web server that helped build the open internet" 
        ;;
    mysql) 
        echo "MySQL: open-source database used by millions of applications" 
        ;;
    kernel) 
        echo "Linux Kernel: the core part of Linux systems, created by Linus Torvalds" 
        ;;
    firefox) 
        echo "Firefox: a fast and open browser focused on privacy and freedom" 
        ;;
    vlc) 
        echo "VLC: an open-source media player that supports almost any format" 
        ;;
esac