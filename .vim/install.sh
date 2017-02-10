#!/bin/bash
set -ex

ln -s ~/.vim/vimrc ~/.vimrc
# installing YouCompleteMe
cd bundle/YouCompleteMe
python install.py
