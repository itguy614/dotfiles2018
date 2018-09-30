#!/bin/sh

echo 'Installing default unix tools'
unixutils=(
    coreutils
    findutils
    bash
    osxutils
)
brew install ${unixutils[@]}
