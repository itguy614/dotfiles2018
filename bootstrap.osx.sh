#!/bin/sh

source $HOME/.dotfiles/bootstrap.osx.sysname.sh

# Hide "last login" line when starting a new terminal session
touch $HOME/.hushlogin

source $HOME/.dotfiles/bootstrap.osx.xcode.sh
source $HOME/.dotfiles/bootstrap.osx.homebrew.sh
source $HOME/.dotfiles/bootstrap.osx.unixtools.sh
source $HOME/.dotfiles/bootstrap.osx.devtools.sh
source $HOME/.dotfiles/bootstrap.osx.binaries.sh

echo 'Install some nice quicklook plugins'
brew cask install --force qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package

source $HOME/.dotfiles/bootstrap.pecl.sh
source $HOME/.dotfiles/bootstrap.composer.sh
source $HOME/.dotfiles/bootstrap.osx.valet.sh
source $HOME/.dotfiles/bootstrap.osx.fonts.sh
source $HOME/.dotfiles/bootstrap.osx.apps.sh

source $HOME/.dotfiles/bootstrap.osx.defaults.sh
source $HOME/.dotfiles/bootstrap.osx.cleanup.sh