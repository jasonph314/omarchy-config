#!/bin/bash
# Simple script to copy configs into place

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing Omarchy configs..."

# Hyprland
cp "$SCRIPT_DIR"/hypr/*.conf ~/.config/hypr/

# Waybar
cp "$SCRIPT_DIR"/waybar/config.jsonc ~/.config/waybar/
cp "$SCRIPT_DIR"/waybar/style.css ~/.config/waybar/

# Lock screen script
mkdir -p ~/.config/hypr/lockscripts
cp "$SCRIPT_DIR"/hypr/lockscripts/spotify_lock.sh ~/.config/hypr/lockscripts/

echo "Done! Restart Hyprland (Super+Shift+E) to apply changes."
