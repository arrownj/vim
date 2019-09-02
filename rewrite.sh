#!/bin/bash


mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tpope/vim-vividchalk.git ~/.vim/colors
mv ~/.vim/colors/colors/* ~/.vim/colors
rm -rf ~/.vim/colors/colors
