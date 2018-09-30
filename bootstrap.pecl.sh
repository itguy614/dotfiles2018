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

echo 'Install laravel envoy'
composer global require laravel/envoy

echo 'Install php-cs-fixer'
composer global require friendsofphp/php-cs-fixer

echo 'Install phpunit-watcher'
composer global require spatie/phpunit-watcher

echo 'Install mixed-content-scanner-cli'
composer global require spatie/mixed-content-scanner-cli

echo 'Install laravel valet'
composer global require laravel/valet
$HOME/.composer/vendor/bin/valet install
$HOME/.composer/vendor/bin/valet park $HOME/code

source $HOME/.dotfiles/bootstrap.osx.fonts.sh
