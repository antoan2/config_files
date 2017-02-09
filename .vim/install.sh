#!/bin/bash

# create symlink to vimrc
ln -s $PWD ~/.vim
ln -s $PWD/vimrc ~/.vimrc

# installing YouCompleteMe
cd bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer --system-clang
