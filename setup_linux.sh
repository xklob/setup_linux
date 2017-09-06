#!/bin/bash

# add repos
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"

# basic update
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

# install apps
sudo apt-get -y install \
    spotify-client \
    git \
    google-chrome-stable \
    guake \
    vim 

# clone the rest of the repo
git clone https://github.com/ditchfieldcaleb/setup_linux

# install and switch to zsh
rm -rf ~/.oh-my-zsh
rm -f ~/.zshrc
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp setup_linux/dotfiles/.zshrc ~/.zshrc
chsh -s /bin/zsh

# setup vundle, vim, and vim plugins
rm -rf ~/.vim
rm -f ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp setup_linux/dotfiles/.vimrc ~/.vimrc
vim +PluginInstall +qall


