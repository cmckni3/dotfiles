#!/usr/bin/env sh

# I wanna go fast
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

defaults write com.apple.finder DisableAllAnimations -bool true

defaults write com.apple.dock launchanim -bool false

defaults write com.apple.dock expose-animation-duration -float 0.1

defaults write com.apple.dock autohide-delay -float 0

defaults write com.apple.mail DisableReplyAnimations -bool TRUE
defaults write com.apple.mail DisableSendAnimations -bool TRUE

# defaults write NSGlobalDomain InitialKeyRepeat -int 15
# defaults write NSGlobalDomain KeyRepeat -int 6

# Disable .DS_Store on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# Disable .DS_Store on USB drives
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool TRUE

##
## Dashboard
##

# Disable dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

##
## Dock
##

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Restart Dock to apply settings
killall Dock

##
## Finder
##

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Set Default Finder location to home
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

killall Finder

echo "Done. Note that some of these changes require a logout/restart to take effect."
