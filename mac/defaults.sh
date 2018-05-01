#!/usr/bin/env sh

# Disable dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Restart Dock to apply settings
killall Dock

echo "Done. Note that some of these changes require a logout/restart to take effect."
