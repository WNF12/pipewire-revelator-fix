#!/bin/bash

echo "🔄 Restoring confirmed working PipeWire + WirePlumber configuration..."

# Stop services
systemctl --user stop pipewire pipewire-pulse wireplumber

# Clean current configs
rm -rf ~/.config/pipewire
rm -rf ~/.config/wireplumber

# Restore backed up configs
cp -r ~/pipewire-backups/final-working/pipewire ~/.config/
cp -r ~/pipewire-backups/final-working/wireplumber ~/.config/

# Reload user systemd and restart services
systemctl --user daemon-reexec
systemctl --user start pipewire pipewire-pulse wireplumber

echo "✅ Restore complete. You may check with 'wpctl status' or 'pactl list sinks'."
