#!/bin/sh

echo 'Installing binaries'
binaries=(
    pkg-config
    prettyping
    wget
    bat
    tldr
    ncdu
    bmon
    mackup
    tree
    watch
)
brew install ${binaries[@]}

brew cask install xquartz
