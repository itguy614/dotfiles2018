#!/bin/sh

apps=(
    1password
    adobe-creative-cloud
    dash
    diffmerge
    dropbox
    etcher
    evernote
    firefox
    google-chrome
    google-nik-collection
    insomnia
    iterm2
    microsoft-office
    microsoft-teams
    mysqlworkbench
    name-mangler
    omnigraffle
    open-in-code
    royal-tsx
    sequel-pro
    skitch
    skype-for-business
    sourcetree
    spotify
    sublime-text
    the-unarchiver
    tunnelblick
    virtualbox
    virtualbox-extension-pack
    visual-studio-code
)
brew cask install ${apps[@]}

# Run the creative cloud installer
open '/usr/local/Caskroom/adobe-creative-cloud/latest/Creative Cloud Installer.app'

# Run the NIK installer
open '/usr/local/Caskroom/google-nik-collection/1.2.11/Nik Collection.app'


