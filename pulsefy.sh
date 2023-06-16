#!/bin/bash

# Get volume value from playerctl command
volume=$(playerctl -p spotify metadata --format '{{ volume }}')

# Multiply the value by 100 and round it to zero decimal places
volume_percentage=$(awk "BEGIN { printf \"%.0f\n\", $volume * 100 }")

# Add the percent symbol (%)
volume_formatted="$volume_percentage%"

# Display the formatted volume
echo "$volume_formatted"
