#!/bin/bash

echo "======================================"
echo " Linux Package Update Notifier"
echo "======================================"

echo "Checking for system updates..."
echo "Update check performed on: $(date)" >> update_log.txt

updates=$(dnf check-update 2>/dev/null)
status=$?

if [ $status -eq 100 ]; then
    echo "Updates are available."

    count=$(echo "$updates" | grep -E '^[a-zA-Z0-9]' | wc -l)
    echo "Number of packages to update: $count"

    echo "Available updates:"
    echo "$updates"

    echo "Updates found on $(date)" >> update_log.txt
    echo "$updates" >> update_log.txt

    read -p "Do you want to update the system now? (y/n): " choice

    if [ "$choice" = "y" ]; then
        sudo dnf update -y
    else
        echo "Update skipped."
    fi

elif [ $status -eq 0 ]; then
    echo "Your system is already up to date."
    echo "System already up to date on $(date)" >> update_log.txt
else
    echo "Error checking updates."
fi
