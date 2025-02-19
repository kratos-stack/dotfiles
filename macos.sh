#!/bin/bash

# Close System Preferences to prevent override
osascript -e 'tell application "System Preferences" to quit'

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Disable the "Are you sure you want to open this application?" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Trackpad: enable tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Dock: minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# Dock: automatically hide and show
defaults write com.apple.dock autohide -bool true

# Save screenshots to Downloads folder
defaults write com.apple.screencapture location -string "$HOME/Downloads"

# Restart affected applications
for app in "Finder" "Dock" "SystemUIServer"; do
    killall "${app}" &> /dev/null
done

echo "macOS configuration complete. Some changes may require a logout/restart to take effect."
