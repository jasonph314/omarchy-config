#!/bin/bash
# Shows currently playing Spotify track on lock screen

player_status=$(playerctl -p spotify status 2>/dev/null)

if [ "$player_status" = "Playing" ] || [ "$player_status" = "Paused" ]; then
    artist=$(playerctl -p spotify metadata artist 2>/dev/null)
    title=$(playerctl -p spotify metadata title 2>/dev/null)

    if [ -n "$artist" ] && [ -n "$title" ]; then
        # Truncate if too long
        output="$artist - $title"
        if [ ${#output} -gt 50 ]; then
            output="${output:0:47}..."
        fi
        echo "$output"
    fi
fi
