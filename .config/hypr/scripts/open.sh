#!/bin/bash
DEST="$(find "/home/pk/" "/mnt" -maxdepth 4 -type d -not -path '*/.*' | fuzzel -dp "Enter Destination: " --log-level=none ‐-lines=1)"
if [ ${#DEST} -ge 1 ]; then
    # emacsclient --create-frame "$DEST"
    thunar "$DEST"    
fi
