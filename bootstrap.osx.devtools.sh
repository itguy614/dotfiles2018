#!/bin/sh

echo 'Installing development tools'
devtools=(
    node@8
    php@7.2
    imagemagick
    yarn
    ghostscript
)
brew install ${devtools[@]}
