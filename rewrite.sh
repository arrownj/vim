#!/bin/bash
cp -f .vimrc ..
cp -rf .vim ..
cp -rf .ssh ..
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tpope/vim-vividchalk.git ~/.vim/colors
