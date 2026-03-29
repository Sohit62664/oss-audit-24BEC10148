#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sohit

PACKAGE="python3"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement (philosophy notes)
case $PACKAGE in
    python3) echo "Python: a community-driven language focused on simplicity and readability" ;;
    apache2) echo "Apache: the web server that built the open internet" ;;
    mysql-server) echo "MySQL: open source at the heart of millions of applications" ;;
    vlc) echo "VLC: a media player that proves open source can do everything" ;;
    *) echo "Unknown package — but still part of open source ecosystem" ;;
esac

