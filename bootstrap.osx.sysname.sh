#!/bin/sh

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "nb3331"
sudo scutil --set HostName "nb3331"
sudo scutil --set LocalHostName "nb3331"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "nb3331"
