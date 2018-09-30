#!/bin/sh

echo 'Install homebrew'
sudo rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

echo 'Install brew-cask'
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/fonts
