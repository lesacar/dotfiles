#!/bin/bash

# Get the current hour in 24-hour format
current_hour=$(date +%H)

# Check if current time is between 22:00 and 07:00
if [[ $current_hour -ge 22 || $current_hour -lt 7 ]]; then
    # Launch yad if not already running
    if ! pgrep -x "yad" > /dev/null; then
        yad --text="🛑 TURN OFF YOUR PC SOON!" --title="BEDTIME REMINDER" \
            --undecorated --on-top --no-buttons  \
            --width=400 --height=200 --center
    fi
else
    # Kill yad if the time is outside the range
    pkill -x "yad"
    exit 0
fi
