#!/bin/sh

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Add global gitignore
rm $HOME/.global-gitignore
ln -s $HOME/.dotfiles/shell/.global-gitignore $HOME/.global-gitignore
git config --global core.excludesfile $HOME/.global-gitignore

# git config
rm $HOME/.gitconfig
ln -s $HOME/.dotfiles/shell/.gitconfig $HOME/.gitconfig

# Symlink vim prefs
rm $HOME/.vimrc
ln -s $HOME/.dotfiles/shell/.vimrc $HOME/.vimrc
rm $HOME/.vim
ln -s $HOME/.dotfiles/shell/.vim $HOME/.vim

echo "Installing Vundle"
rm -Rf $HOME/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

# ctag prefs
rm $HOME/.ctags
ln -s $HOME/.dotfiles/shell/.ctags $HOME/.ctags

# editorconfig prefs
rm $HOME/.editorconfig
ln -s $HOME/.dotfiles/shell/.editorconfig $HOME/.editorconfig

# php_cs config
rm $HOME/.php_cs
ln -s $HOME/.dotfiles/shell/.php_cs $HOME/.php_cs

# Symlink yarn prefs
rm $HOME/.yarnrc
ln -s $HOME/.dotfiles/shell/.yarnrc $HOME/.yarnrc

rm $HOME/.bash_profile
ln -s $HOME/.dotfiles/shell/.bash_profile $HOME/.bash_profile

rm $HOME/.bashrc
ln -s $HOME/.dotfiles/shell/.bashrc $HOME/.bashrc

case `uname` in
    Darwin)
        source $HOME/.dotfiles/bootstrap.osx.sh
    ;;
esac
