#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sohit

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "Python Config Check"
echo "-------------------"

# Check Python binary location
if [ -f "/usr/bin/python3" ]; then
    ls -ld /usr/bin/python3
else
    echo "Python binary not found"
fi
