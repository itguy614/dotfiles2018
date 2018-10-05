#!/bin/sh

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "nb4165"
sudo scutil --set HostName "nb4165"
sudo scutil --set LocalHostName "nb4165"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "nb4165"
